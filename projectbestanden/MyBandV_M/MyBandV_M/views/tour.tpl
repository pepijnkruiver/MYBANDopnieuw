<content class="wrap">

    <section>
        <div class="mainbar">
            <div class="opzij">
                {foreach from=$result_list_tour item=article}
                    <div class="mainbar3">
                        <article>
                            <h1>{$article.Name}</h1>
                            <h4>{$article.Date}</h4>
                            <content>{$article.Place|truncate:1000:'..':true:true}</content>
                            
                        </article><br>
                    </div>
                {/foreach}
             </div>
        </div>

        <div class="sidebar">
            <h1>New merch</h1>

            {foreach from=$result_list_merch item=article}
                <img src="images/merch/{$article.image}">
            {/foreach}

        </div>
    </section>

</content>

