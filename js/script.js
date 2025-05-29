document.addEventListener('DOMContentLoaded', () => {
  const borrarBtn = document.getElementsByClassName('borrar');

  for (let i = 0; i < borrarBtn.length; i++) {
    borrarBtn[i].addEventListener("click", () => {
      confirm("¿Desea eliminar este registro?");
    });
  }
});