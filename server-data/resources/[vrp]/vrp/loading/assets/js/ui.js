$(window).load(function() {
  $("#preloader").fadeOut(200);
});

var tips = ['Cuidado ao ultrapassar sinais vermelhos.', 'Não é permitido Dark RP.', 'Você sabia? Identificar um membro de facção apenas pela cor que ele veste é metagaming e está sujeito a ban.', 'Não pergunte sobre coisas ilegais a qualquer pessoa. Tome cuidado.', 'Não ande com muito dinheiro em mãos.', 'Em caso de bugs, utilize o /help.', 'Não utilize informações privilegiadas obtidas no Discord ou de algum streamer para se beneficiar na cidade. Sujeito a ban.', 'Leia as regras no nosso Discord e respeite os outros cidadãos.'];
setInterval(function() {
  var r = Math.floor(Math.random() * tips.length);
  $(".tip-text").fadeOut(200, function() {
    $(".tip-text").html(tips[r]);
    $(this).fadeIn(200);
  });
  
}, 10000);

$(function(){   
    $(document).keydown(function(objEvent) {        
        if (objEvent.ctrlKey) {          
            if (objEvent.keyCode == 65) {                         

                return false;
            }            
        }        
    });
}); 