<!-- target: talk -->
<!-- use: talk-header(hasme=0, title=${title}, back=${back}) -->
<section class="talk-detail">
    <div class="talk-deatil-title">
        <img src="${data.icon}" width="80" height="80" />
        <div class="talk-detail-title-ctx">
            <h2 class="talk-dt-ctx">${data.title}</h2>
            <h2 class="talk-dt-tip">${data.desp}</h2>
        </div>
    </div>
    <ul class="talk-detail-box">
        <!-- for: ${data.datalist} as ${item} -->
        <li class="talk-detail-item">
            <span class="talk-detail-label">${item.label}</span>
            <div class="talk-detail-item-ctx">
                ${item.desp}
            </div>
        </li>
        <!-- /for -->
        <li class="talk-detail-item">
            <span class="talk-detail-label">接收消息</span>
            <div class="talk-detail-item-ctx">
                <div class="talk-detail-item-op talk-detail-open">
                    <span class="talk-detail-item-opbg"></span>
                    <span class="talk-detail-item-opbtn"></span>
                </div>
            </div>
        </li>
    </ul>
    <!-- if: ${data.watched} == 1 -->
    <div class="talk-detail-btn talk-detail-unwatch">
        取消关注
    </div>
    <!-- else -->
    <div class="talk-detail-btn talk-detail-towatch">
        关注
    </div>
    <!-- /if -->
</section>
<!-- /target -->
