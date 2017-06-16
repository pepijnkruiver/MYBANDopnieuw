

<content class="wrap">

    <section>
        <div class="mainbar">
            <div class="opzij">
                
                
                
<script>
                    function showUser(str) {
                        console.log(str);
                        if (str == "") {
                            document.getElementById("txtHint").innerHTML = "";
                            return;
                        } else {
                            if (window.XMLHttpRequest) {
                                // code for IE7+, Firefox, Chrome, Opera, Safari
                                xmlhttp = new XMLHttpRequest();
                            } else {
                                // code for IE6, IE5
                                xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
                            }
                            xmlhttp.onreadystatechange = function () {
                                if (this.readyState == 4 && this.status == 200) {
                                    document.getElementById("txtHint").innerHTML = this.responseText;
                                }
                            };
                            xmlhttp.open("GET", "model/search.php?q=" + str, true);
                            xmlhttp.send();
                        }
                    }
</script>
                
<div class="search">
            <h1>Search</h1>
            <div class="zoek">
                <form action="model/search.php">
                    <input type="text" name="Code" onKeyup="showUser(this.value)">
                </form>
            </div>
            <div id="txtHint"></div>
</div>
                
                
                
                
                
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