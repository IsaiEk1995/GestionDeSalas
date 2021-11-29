var tabla = document.querySelector('#paginador');
  var dataTable = new DataTable(tabla,{
    perPage:3,
    perPageSelect:[3,6,9,12]
  }
);