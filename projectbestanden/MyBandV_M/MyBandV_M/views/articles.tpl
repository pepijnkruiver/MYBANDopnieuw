<content class="wrap">

    <section>
        <div class="mainbar">
            <div class="opzij">
                {foreach from=$result_list item=article}
                    <div class="mainbar2">
                        <article>
                            <h1>{$article.title}</h1>
                            <content>{$article.content|truncate:150}<button id="{$article.id}" type="button" class="btn btn-info btn-lg modalBtn" data-toggle="modal" data-target="{$article.id}">Open Modal</button></content>
                        </article><br>
                    </div>
                
                    <div class="sidebar2">
                        <img src="images/article/{$article.image}">
                    </div>
                
                <!-- Modaal scherm -->
                    <div id="mymodal{$article.id}" class="modal" role="dialog">
                        <div class="modal-dialog">


                            <div class="modal-content">

                                  <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title">{$article.title}</h4>
                                  </div>

                                  <div class="modal-body">
                                        <div class="modal-beschrijving"><p><p>{$article.date_created}</p><p>{$article.content}</p></p></div>
                                  </div>

                            </div>

                        </div>
                    </div>
                          <script> 
                                $('.modalBtn').click(function(){
                                    $('#mymodal' + this.id).show();
                                });
                                $('.close').click(function(){
                                    $('.modal').hide();
                                });
                         </script>
            
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

