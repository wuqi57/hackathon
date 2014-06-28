<!-- target: talk -->
<!-- use: talk-header(hasme=1, title=${title}, back=${back}) -->
<section class="talk-box">
    <!-- for: ${list} as ${item} -->
    <!-- if: ${item.type} == 1 -->
    <!-- use: talk-left(item=${item}) -->
    <!-- elif: ${item.type} == 2 -->
    <!-- use: talk-right(item=${item}) -->
    <!-- elif: ${item.type} == 3 -->
    <!-- use: talk-info(item=${item}) -->
    <!-- elif: ${item.type} == 4 -->
    <!-- use: talk-list(item=${item}) -->
    <!-- /if -->
    <!-- /for -->
</section>
<!-- import: talk-footer -->
<!-- /target -->

<!-- target: talk-left -->
<div class="talk-list-item talk-type-left">
    <div class="talk-list-time">
        <span class="talk-list-time-ctx">${item.time}</span>
    </div>
    <a href="#/talk/detail" class="talk-icon-left">
        <img src="${item.icon}" width="40" />
    </a>
    <div class="talk-detail-right">
        <div class="talk-detail-ctx">
            ${item.desp}
        </div>
        <span class="talk-trangle-border"></span>
        <span class="talk-trangle-content"></span>
    </div>
</div>
<!-- /target -->

<!-- target: talk-right -->
<div class="talk-list-item talk-type-right">
    <div class="talk-list-time">
        <span class="talk-list-time-ctx">20:35</span>
    </div>
    <a href="#/talk/detail" class="talk-icon-right">
        <img src="test/img/icon_tesla.jpg" width="40" />
    </a>
    <div class="talk-detail-left">
        <div class="talk-detail-ctx">
            jfkdlsjakljfkdls;ajklf;jdsajfkldjskal;fjkldsjaklfjdkslajfkldjsklajfkldsjakl;fjkdlsajkfljdsklajfklas;
        </div>
        <span class="talk-trangle-border"></span>
        <span class="talk-trangle-content"></span>
    </div>
</div>
<!-- /target -->

<!-- target: talk-info -->
<div class="talk-list-item talk-type-info">
    <div class="talk-list-time">
        <span class="talk-list-time-ctx">20:35</span>
    </div>
    <a href="#" class="talk-list-info">
        <h2 class="talk-list-title">jfkdlsajkfdsa</h2>
        <img src="#" width="100%" height="80" />
        <div class="talk-list-desp">jfkdlsajfkldjskalfjkdsl;ajkfljdskla;jfsa</div>
        <div class="talk-list-more">
            <span class="talk-list-more-time">昨天21：44</span>
            <span class="talk-list-more-to">查看全文</span>
        </div>
    </a>
</div>
<!-- /target -->

<!-- target: talk-list -->
<div class="talk-list-item talk-type-list">
    <div class="talk-list-time">
        <span class="talk-list-time-ctx">20:35</span>
    </div>
    <ul class="talk-list-detail">
        <li class="talk-list-detail-item">
            <a href="#" class="talk-list-detail-link">
                <img src="#" width="100%" height="100">
                <div class="talk-list-detail-title">
                    <div class="talk-list-detail-mask"></div>
                    <div class="talk-list-detail-ctx">fjdkslajfkjdsakfjkdsljafkldjsakjfkdslja;kfjkdsljakfljdskl;afjal;</div>
                </div>
            </a>
        </li>
        <li class="talk-list-detail-item">
            <a href="#" class="talk-list-detail-link">
                <img class="talk-list-detail-img" src="#" width="40" />
                fjkdlsjal;fjkdlsajfkljdskal;fjkld
            </a>
        </li>
        <li class="talk-list-detail-item">
            <a href="#" class="talk-list-detail-link">
                <img class="talk-list-detail-img" src="#" width="40" />
                fjkdlsjal;fjkdlsajfkljdskal;fjkld
            </a>
        </li>
        <li class="talk-list-detail-item">
            <a href="#" class="talk-list-detail-link">
                <img class="talk-list-detail-img" src="#" width="40" />
                fjkdlsjal;fjkdlsajfkljdskal;fjkld
            </a>
        </li>
        <li class="talk-list-detail-item">
            <a href="#" class="talk-list-detail-link">
                <img class="talk-list-detail-img" src="#" width="40" />
                fjkdlsjal;fjkdlsajfkljdskal;fjkld
            </a>
        </li>
    </ul>
</div>
<!-- /target -->