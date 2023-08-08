import debounce from './debounce'; // Make sure the path is correct

document.addEventListener('DOMContentLoaded', function () {
  const searchForm = document.getElementById('search-form');
  const searchInput = document.getElementById('search-bar');
  const productsListContainer = document.getElementById(
    'products-list-container'
  );

  let typingTimer;

  const delayedSearch = debounce(function () {
    const searchValue = encodeURIComponent(searchInput.value.trim())
    console.log("Encoded search term:", searchValue);

    if (searchValue !== '') {
      // Clear the typing timer to avoid triggering the search
      clearTimeout(typingTimer);

      // Trigger the search request after 1 second of inactivity
      typingTimer = setTimeout(function () {
        const request = new XMLHttpRequest();

        request.open('GET', `${searchForm.action}?search=${searchValue}`, true);
        request.setRequestHeader('X-Requested-With', 'XMLHttpRequest');

        request.onreadystatechange = function () {
          if (
            request.readyState === XMLHttpRequest.DONE &&
            request.status === 200
          ) {
            console.log("product", productsListContainer);
            productsListContainer.innerHTML = request.responseText;
          }
        };

        request.send();
      }, 1000); // Delay time in milliseconds (1 second)
    }
  }, 300); // Debounce delay time in milliseconds (adjust as needed)

  searchInput.addEventListener('input', delayedSearch);
});
