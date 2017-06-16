<content class="wrap">


<section>
    <div class="mainbar">
        <div class="opzij">
    <h1>About</h1>
    {foreach from=$result_list_abt item=article}
        <article>
        <content>{$article.content}</content>
        </article><br>
    {/foreach}
    <h3>Members</h3>
    {foreach from=$result_list_member item=article}
    <article>
        <content>{$article.rol}: {$article.member}</content>
    </article>
    {/foreach}
            
           <div class="schermmargin"><div class="video-container"><iframe src="https://www.youtube.com/embed/vngiKahrzcs" frameborder="0" allowfullscreen></iframe></div></div>
    
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