$(function () {
  var operation = "C"; //"C"=Crear
  var selected_index = -1; // Indice do elemento selecionado na lista
  var tblPersons = localStorage.getItem("tblPersons"); //retornar os dados armazenados
  tblPersons = JSON.parse(tblPersons); //converteer string em objeto
  if (tblPersons === null) // se não tem dados iniciar um array vazio
      tblPersons = [];

  function Create() {
    //Obter os valores inputados no html e converte-los em string
    var person = JSON.stringify({
       Nome: $("#Nome").val(),
        CPF: $("#CPF").val(),
        Senha: $("#Senha").val(),
        Email: $("#Email").val()
    }); 
    //Inserir o objeto na tabela
    tblPersons.push(person);
    //Armazenar os dados localStorage
    localStorage.setItem("tblPersons", JSON.stringify(tblPersons));
    alert("Os dados foram armazenados"); //Mensageme de alerta
    return true;
  }

  function Edit() {
    // Editar o item selecionado na tabela
    tblPersons[selected_index] = JSON.stringify({
        Nome: $("#Nome").val(),
        CPF: $("#CPF").val(),
        Senha: $("#Senha").val(), 
        Email: $("#Email").val()
    });
    //Armazenar os itens em localStorage
    localStorage.setItem("tblPersons", JSON.stringify(tblPersons)); 
    alert("Os dados foram editados"); //Mensagem de alerta
    return true;
  }

  function Delete() {
    //Eliminar elemento selecionado da tabela
    tblPersons.splice(selected_index, 1); 
    //Actualizar os datos de Local Storage
    localStorage.setItem("tblPersons", JSON.stringify(tblPersons)); 
    alert("Bombeiro eliminado"); //Mensagem de alerta
  }

  function List() {
    $("#tblList").html("");
    $("#tblList").html(
            "<thead>" +
            "<tr>" +                
            "<th>Nome</th>" +
            "<th>CPF</th>" +
            "<th>Senha</th>" +
            "<th>Email</th>" +
            "<th>Ações</th>" +
            "</tr>" +
            "</thead>" +
            "<tbody>" +
            "</tbody>"
            ); //Agregar a tabela a estrutura HTML
    for (var i in tblPersons) {
        var per = JSON.parse(tblPersons[i]);
        $("#tblList tbody").append("<tr>" +                    
                "<td>" + per.Nome + "</td>" +
                "<td>" + per.CPF + "</td>" +
                "<td>" + per.Senha + "</td>" + 
                "<td>" + per.Email + "</td>" +
                                   
                                   
                 "<td><img src='http://res.cloudinary.com/demeloweb/image/upload/v1497537879/edit_n51oto.png' alt='Edit" + i + "' class='btnEdit'/>&nbsp &nbsp<img src='http://res.cloudinary.com/demeloweb/image/upload/v1497537882/delete_ntuxjl.png' alt='Delete" + i + "' class='btnDelete'/></td>" +                  
                
                "</tr>"
                );
    } //carregar e inserir os itens na tabela
  }

  $("#frmPerson").bind("submit", function () {
    if (operation === "C")
        return Create();
    else
        return Edit();
  }); 
  
  List();

  $(".btnEdit").bind("click", function () {
    operation = "E"; //"E" = Editar
    //Obter o identificador do item a ser editado
    selected_index = parseInt($(this).attr("alt").replace("Edit", ""));
    //Converter JSON no formato adequado para os itens serem editados
    var per = JSON.parse(tblPersons[selected_index]); 
    $("#Nome").val(per.Nome);
    $("#CPF").val(per.CPF);
    $("#Senha").val(per.Senha);
    $("#Email").val(per.Email);
    
  
  });

  $(".btnDelete").bind("click", function () {
    //OObter o identificador do item a ser deletado
    selected_index = parseInt($(this).attr("alt").replace("Delete", "")); 
    Delete(); //eliminar o item
    List(); //Voltar aos itens listados na tabela
  });
});