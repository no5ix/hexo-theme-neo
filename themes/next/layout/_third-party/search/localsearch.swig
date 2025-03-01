{% if theme.local_search.enable %}
  <script type="text/javascript">

    let db; // 全局数据库变量
    var is_load_xml_finished = 0;
    var keywords = [];
    var curDate = new Date();
    var xml_resp_cache = null;
    var temp_keyword = "";

    'use strict';

    var content_id = isMobile() ? "local-search-result-mobile" : "local-search-result-pc";
    var $input = document.getElementById('local-search-input');
    var $resultContent = document.getElementById(content_id);
    const searchButton = document.getElementById('search-button');

    var str = "";

    // 是否为第一个字母被键入的标志位
    var first_char_flag = 0;

    // 因为在移动设备上, 点击搜索之后会 scroll 到页面顶部, 所以需要记录之前的页面x, y坐标值, 以便于搜索完点击 close 按钮之后 scroll 回原来的页面坐标值.
    var last_page_x = 0;
    var last_page_y = 0;

    function CloseLocalSearch(when_delete_all_on_mobile=false)
    {
        setTimeout(function() {  // 这个setTimeout的目的是为了解决当使用中文输入法输入英文的时候敲下enter键的那一瞬间发生从有文字到没文字又到有文字, 而下方window.scrollTo这个还没执行到, 会导致页面scroll乱滚; 加了这个timeout之后就可以检测是否属于这种情况
            if (temp_keyword.length > 0) {
                return;
            }
            first_char_flag = 0;
            $('#local-search-input').val('');
            $('#local-search-close').hide();
            // $('.local-search-result-cls ul li').velocity('stop').velocity('transition.slideDownOut', 200);
            // $('#' + content_id).attr("headroom_special_attr","true"); 
            if (isMobile())
            {
              // $('body').scrollTop(last_page_y);  // scrollTop 有兼容性问题
              // $('#' + content_id).hide();

                $('#' + content_id).velocity('stop').velocity( 'transition.slideUpOut', 300);

                if (!when_delete_all_on_mobile) {
                    $input.blur();
                    document.querySelector("#local-search-close").classList.remove("move");
                    $input.classList.remove('expanded');
                } else {
                    return;
                }
                const element = document.getElementById('local-search-result-mobile');
                let bottomY = element.offsetTop + element.offsetHeight;  // local search result底部相对于整个页面的 Y 坐标
                if (bottomY == 0) {  // 说明 local search result底部 比当前页面还要长
                    scrollTo(last_page_x, last_page_y);
                    return;
                }
                // console.log("rrrrrrretrn " + bottomY);
                // console.log("rrrrrrretrnyyy " + window.scrollY);
                if (window.scrollY > bottomY) {  // 如果用户滚动到比 local search result的底部还要低, 那说明他不想回到他search之前的位置了
                    return;
                }
                setTimeout(function() {
                    // scrollTo(last_page_x, last_page_y);
                    window.scrollTo({
                        top: last_page_y,
                        left: last_page_x,
                        behavior: "smooth",
                        duration: 300 // 滚动动画持续x毫秒
                    });
                }, 150);
            }
            else
            {
                $('#' + content_id).velocity('stop').velocity( 'transition.bounceOut', 800);
                // $('#' + content_id).velocity('stop').velocity( 'transition.slideUpBigOut', 1000);
                // $('#' + content_id).velocity('stop').velocity( 'transition.bounceUpOut', 1000);
                // $('#' + content_id).velocity('stop').velocity( 'transition.expandOut', 600);
                // $('#' + content_id).velocity('stop').velocity( 'transition.whirlOut', 600);
                // $('#' + content_id).velocity('stop').velocity( 'transition.shrinkOut', 600);
                // $('#' + content_id).velocity('stop').velocity( 'transition.swoopOut', 1000);
                // $('#' + content_id).velocity('stop').velocity( 'transition.flipBounceXOut', 600);
                // $('#' + content_id).velocity('stop').velocity( 'transition.fadeOut', 600);
            }
        }, 150);
    }

    async function handleSearch()
    {
      if (keywords.length <= 0) {
          return;
      }
      $resultContent.innerHTML = "";
      $('#local-search-close').show();

      // 0x04. perform local searching
      if (is_load_xml_finished == 0)
      {
          var local_search_tips = 
              "<span class='local-search-empty'>" + "第一次搜索可能较慢, 先思考一个经典算法问题, 跳台阶:" + "</span>" +
              "<span class='local-search-empty'>" + "一只青蛙一次可以跳上1级台阶，也可以跳上2级。求该青蛙跳上一个6级的台阶总共有多少种跳法?n级呢?" + "</span>";
          var ProgressBar = 
              "<div class='progress-bar'>" +
                "<div class='progress-bar-charge'></div>" +
              "</div>";
          $resultContent.innerHTML = 
              "<ul class='local-search-empty-ul'>" + 
              local_search_tips +
              ProgressBar;
      }
      else
      {
        // Retrieve the object from local storage
        var xml_resp = await retrieve_search_xml()

        xml_resp.forEach(function (data) {
          var isMatch = true;
          var content_index = [];
          if (!data.title || data.title.trim() === '') {
            data.title = "Untitled";
          }
          var is_encrypted = data.encrypted.trim() == '1'
          var is_sensitive = CONFIG.local_search.sensitive_word && data_content.indexOf(CONFIG.local_search.sensitive_word) >= 0
          var orig_data_title = data.title.trim();
          var data_title = orig_data_title.toLowerCase();
          var orig_data_content = data.content.trim().replace(/<[^>]+>/g, "");
          var data_content = orig_data_content.toLowerCase();
          var data_url = decodeURIComponent(data.url);
          var index_title = -1;
          var index_content = -1;
          var first_occur = -1;
          // only match artiles with not empty contents
          if (data_content !== '') {
            keywords.forEach(function (keyword, i) {
              index_title = data_title.indexOf(keyword);
              // index_content = (is_sensitive || is_encrypted) ? -1 : data_content.indexOf(keyword);  // 不能搜加密文章,
              index_content = data_content.indexOf(keyword); //  这样可以搜加密了的文章, 但是搜索结果框不显示正文只显示标题

              if (index_title < 0 && index_content < 0) {
                isMatch = false;
              } else {
                if (index_content < 0) {
                  index_content = 0;
                }
                if (i == 0) {
                  first_occur = index_content;
                }
                // content_index.push({index_content:index_content, keyword_len:keyword_len});
              }
            });
          } else {
            isMatch = false;
          }
          // 0x05. show search results
          if (isMatch) {
            var content = orig_data_content;
            if (first_occur >= 0) {
              var match_content = "";
              
              const hostname = window.location.hostname;
              if ((!is_sensitive && !is_encrypted) || (hostname === "localhost" || hostname === "127.0.0.1" || hostname === "::1" || hostname.startsWith("192")))
              {
                // cut out 100 characters
                var start = first_occur - 20;
                var end = first_occur + 80;
                if (start < 0) {
                  start = 0;
                }
                if (start == 0) {
                  end = 100;
                }
                if (end > content.length) {
                  end = content.length;
                }
                match_content = content.substr(start, end);
              }
              // highlight all keywords
              var regS = "";
              if (match_content != "")
              {
                keywords.forEach(function (keyword) {
                  regS = new RegExp(keyword, "gi");
                  match_content = match_content.replace(regS, "<b class=\"search-keyword\">" + keyword + "</b>");
                  orig_data_title = orig_data_title.replace(regS, "<b class=\"search-keyword\">" + keyword + "</b>");
                });
              }
              else
              {
                keywords.forEach(function (keyword) {
                  regS = new RegExp(keyword, "gi");
                  orig_data_title = orig_data_title.replace(regS, "<b class=\"search-keyword\">" + keyword + "</b>");
                });
              }
              str += "<li><a href='" + data_url + "' class='search-result-title' target='_blank'>" + orig_data_title + "</a>";
              str += "<p class=\"search-result\">" + match_content + "...</p>"
            }
            str += "</li>";
          }
        });

        str += "</ul>";
        if (str.indexOf('<li>') === -1) {
          return $resultContent.innerHTML = 
            "<ul class='local-search-empty-ul'><span class='local-search-empty'>404.<span></ul>";
        }
        $resultContent.innerHTML = str;
      }
    }

    $input.addEventListener('input', function () {
      // 0x03. parse query to keywords list
      str = '<ul class=\"search-result-list\">';
      temp_keyword = this.value.trim();
      if (temp_keyword.length <= 0) {
          CloseLocalSearch(true);
          return;
      }

      keywords = temp_keyword.toLowerCase().split(/[\s\-]+/);
      handleSearch();

      // 当用户键入第一个字母的时候的动画处理逻辑 : 
      // 当 first_char_flag 为 0 的时候, 
      // 要播放一个动画
      if (first_char_flag == 0)
      {
          // $('body').scrollTop(0);
        if (isMobile())
        {
            last_page_x = window.scrollX;
            last_page_y = window.scrollY;
            scrollTo(0,0);
          // $('body').scrollTop(0);

        }
        first_char_flag = 1;
        // $('#' + content_id).removeAttr("headroom_special_attr");

        if (isMobile()) {
          $('#' + content_id).velocity('stop').velocity('transition.slideDownIn', 600);
        } else {
              $('#' + content_id).velocity('stop').velocity('transition.bounceIn', 800);
            //   $('.local-search-result-cls ul li').velocity('stop').velocity('transition.bounceUpIn', 1200);
        }
        $('.local-search-result-cls ul li').velocity('stop').velocity('transition.slideDownBigIn', 1000);
      }
    });

    // 如果你希望 一次点击就触发，无论是触摸板、鼠标还是 iPhone/安卓，推荐使用：
    $(document).on('pointerup', '#local-search-close', function(event) {
        temp_keyword = "";
        CloseLocalSearch();
    });

    if (isMobile()) {
        $input.addEventListener("blur", function() {
          $('#local-search-input').val('');
          if (temp_keyword.length > 0) {
              document.querySelector("#local-search-close").classList.add("move");
              setTimeout(function() {
                  $input.classList.remove('expanded');
              }, 450);
          } else {
              $input.classList.remove('expanded');
          }
          setTimeout(()=> {
              searchButton.disabled = false;
          }, 600);
          // console.log("输入框失去焦点");
        });
    }

    // 给按钮添加点击事件
    if (isMobile()) {
        searchButton.addEventListener('pointerup', function() {
            // 使输入框渐变显示
            searchButton.disabled = true;  // 点击之后就禁用, 直到input失焦
            $input.focus();
            if (temp_keyword.length > 0) {
                document.querySelector("#local-search-close").classList.remove("move");
                setTimeout(function() {
                    $input.classList.add('expanded');
                    setTimeout(function() {
                        $('#local-search-input').val(temp_keyword);
                    }, 200);
                }, 450);
            } else {
                setTimeout(function() {
                    $input.classList.add('expanded');
                }, 200);
            }
        });
    }

    // 你的代码在 document 上监听 click 事件，并检查点击的目标是否在 content_id 指定的元素内部。如果点击的目标不在该元素内，则执行 CloseLocalSearch()。
    // $(document).click(function(event) {
    //     if (isMobile()) {
    //         return;
    //     } else {
    //         if (!$(event.target).closest('#' + content_id).length) {
    //             temp_keyword = "";
    //             CloseLocalSearch();
    //         }
    //     }
    // });

    $(document).keyup(function(event){
      switch(event.keyCode) {
        case 27:
          // alert("ESC");
          temp_keyword = "";
          CloseLocalSearch();
      }
    });

    function isMobile() {
      // console.log(document.body.clientWidth);
      return document.body.clientWidth < 768
    }

    {/* function store_search_xml(xmlResponse) {
        var entries = $("entry", xmlResponse).map(function () {
          return {
            title: $("title", this).text(),
            content: $("content", this).text(),
            url: $("url", this).text(),
            encrypted: $("encrypted", this).text(),
          };
        }).get();
        // Put the object into storage
        localStorage.setItem('local_search_xml_data', JSON.stringify(entries));
        localStorage.setItem('last_store_local_search_date', curDate.getDate());
        is_load_xml_finished = 1;
        console.log("[local search] - store search.xml finished.");
    } */}

    function ajax_store_search_xml() {
        console.log("[local search] - ajax downloading search.xml ...");
        $.ajax({
            url: "/search.xml",
            dataType: "xml",
            success: function (xmlResponse) {
                setLocalSearchXMLData(xmlResponse);
                // 如果输入框有文字, 等待下载 xml完毕之后再弹出结果
                if (temp_keyword.length > 0) {
                    handleSearch();
                    $('.local-search-result-cls ul li').velocity('stop').velocity('transition.swoopIn', 1200);
                }
            }
        });
    }

    async function retrieve_search_xml() {
        // // Retrieve the object from local storage
        // var retrievedObject = localStorage.getItem('local_search_xml_data');
        // var xml_resp = JSON.parse(retrievedObject)
        // return xml_resp

        if (xml_resp_cache) {
          return xml_resp_cache;
        }
        // Retrieve the object from indexedDB
        xml_resp_cache = await getLocalSearchXMLData();
        return xml_resp_cache;
    }

    function openDatabase() {
        return new Promise((resolve, reject) => {
            const request = indexedDB.open("myDatabase", 1); // 设置为版本号 1, 用indexedDB替代localStorage, 因为indexedDB可以存储大量数据（几百 MB 到几 GB）, 而localStorage只能5MB左右, 
            request.onupgradeneeded = function(event) {
                db = event.target.result;
                if (!db.objectStoreNames.contains("searchData")) {
                    const objectStore = db.createObjectStore("searchData", { keyPath: "id" });
                    // 可以创建索引以便于查询
                    objectStore.createIndex("xmlDataIndex", "xml_data", { unique: false });
                }
            };
            request.onsuccess = function(event) {
                db = event.target.result;
                console.log("[local search] - Database opened successfully.");
                resolve(db);
            };
            request.onerror = function(event) {
                console.error("[local search] - Database open error:", event.target.error);
                reject(event.target.error);
            };
        });
    }

    async function setLocalSearchXMLData(xmlResponse) {
        if (!db) {
            await openDatabase();  // 确保数据库已打开
        }
        var transaction = db.transaction(["searchData"], "readwrite");
        var objectStore = transaction.objectStore("searchData");

        var xml_data = $("entry", xmlResponse).map(function () {
          return {
            title: $("title", this).text(),
            content: $("content", this).text(),
            url: $("url", this).text(),
            encrypted: $("encrypted", this).text(),
          };
        }).get();
        // 存储数据，主键为 "id"，这里我们将 "id" 设为 "local_search_xml_data"
        var data = { id: "local_search_xml_data", xml_data: xml_data };

        var request = objectStore.put(data);  // 使用 put 可以插入或者更新数据
        request.onsuccess = function() {
            console.log("[local search] - Data successfully stored in indexedDB.");
            localStorage.setItem('last_store_local_search_date', curDate.getDate());
            is_load_xml_finished = 1;
        };
        request.onerror = function(event) {
            console.log("[local search] - Error storing data: ", event.target.error);
        };
    }

    // 封装 IndexedDB 操作为 Promise
    function getLocalSearchXMLData() {
        return new Promise((resolve, reject) => {
            if (!db) {
                reject("[local search] - Database is not initialized.");
                return;
            }
            var transaction = db.transaction(["searchData"], "readonly");
            var objectStore = transaction.objectStore("searchData");
            var request = objectStore.get("local_search_xml_data");  // 使用 id 获取数据
            request.onsuccess = function(event) {
                if (request.result) {
                    // 数据存在，成功处理
                    resolve(request.result.xml_data);  // 解析成功并返回结果
                } else {
                    // 数据未找到，返回失败
                    reject("Data not found");  // 抛出错误
                }
            };
            request.onerror = function(event) {
                // 错误处理
                console.log("[local search] - Error retrieving data: ", event.target.error);
                reject(event.target.error);  // 抛出错误
            };
        });
    }

    // 使用 async/await 来调用这个函数
    async function loadSearchData() {
        try {
            if (!db) {
                await openDatabase();  // 确保数据库已打开
            }
            await getLocalSearchXMLData();  // 等待结果
            is_load_xml_finished = 1;
            console.log("[local search] - load search.xml finished.");
            // console.log("Retrieved data: ", result);
        } catch (error) {
            // console.error("Error: ", error);
            console.log("[local search] - load search.xml not found.");
            ajax_store_search_xml();
        }
    }

    // var local_search_xml_data = localStorage.getItem('local_search_xml_data');
    // if (local_search_xml_data) {
    //     is_load_xml_finished = 1;
    //     console.log("[local search] - load search.xml finished.");
    // }
    var last_store_local_search_date = localStorage.getItem('last_store_local_search_date');
    // 只有在 localStorage 没有 search.xml数据或者 距离上次使用local search已经超过一天了才去取search.xml
    // 节省流量
    if (last_store_local_search_date != curDate.getDate()) {
        // download search.xml
        ajax_store_search_xml();
    } else {
        // 调用异步函数
        loadSearchData();
    }
    

  </script>
{% endif %}
