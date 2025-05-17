 document.addEventListener('DOMContentLoaded', () => {
  const borrarBtn = document.getElementById('borrar');
  borrarBtn.addEventListener('click', () => {
    prompt("Ingresar el código del registro que se desea eliminar.","");
  })
});