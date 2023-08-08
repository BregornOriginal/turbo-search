document.addEventListener("DOMContentLoaded", function() {
  const searchForm = document.getElementById("search-form");
  const searchInput = document.getElementById("search-bar");
  const productsListContainer = document.getElementById("products-list-container");

  searchInput.addEventListener("input", function() {
    const searchValue = searchInput.value;
    const request = new XMLHttpRequest();

    request.open("GET", `${searchForm.action}?search=${searchValue}`, true);
    request.setRequestHeader("X-Requested-With", "XMLHttpRequest");

    request.onreadystatechange = function() {
      if (request.readyState === XMLHttpRequest.DONE && request.status === 200) {
        productsListContainer.innerHTML = request.responseText;
      }
    };

    request.send();
  });
});
