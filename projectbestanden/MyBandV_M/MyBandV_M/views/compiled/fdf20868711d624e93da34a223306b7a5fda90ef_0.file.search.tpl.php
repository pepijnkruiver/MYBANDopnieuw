<?php
/* Smarty version 3.1.30, created on 2017-06-15 21:53:25
  from "C:\wamp\www\MyBandV_M\MyBandV_M\views\search.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5942e5b5a486f7_03582107',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'fdf20868711d624e93da34a223306b7a5fda90ef' => 
    array (
      0 => 'C:\\wamp\\www\\MyBandV_M\\MyBandV_M\\views\\search.tpl',
      1 => 1497556173,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5942e5b5a486f7_03582107 (Smarty_Internal_Template $_smarty_tpl) {
?>


<content class="wrap">

    <section>
        <div class="mainbar">
            <div class="opzij">
                
                
                
<?php echo '<script'; ?>
>
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
<?php echo '</script'; ?>
>
                
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

            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['result_list_merch']->value, 'article');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['article']->value) {
?>
                <img src="images/merch/<?php echo $_smarty_tpl->tpl_vars['article']->value['image'];?>
">
            <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>


        </div>
    </section>

</content><?php }
}
