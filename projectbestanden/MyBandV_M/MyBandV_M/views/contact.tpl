<content class="wrap">


<section>
    <div class="mainbar">
        <div class="opzij">
    <h1>Contact</h1>
    <h3>Social media</h3>
    {foreach from=$result_list_contact1 item=article}
        <article>
        <content><b>{$article.media}</b>:<a href="{$article.link}"> Click to visit</a></content>
        </article>
    {/foreach}
    
    <h3>Personal</h3>
    {foreach from=$result_list_contact2 item=article}
    <article>
        <content><b>{$article.adres}</b>: {$article.info}</content>
    </article>
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