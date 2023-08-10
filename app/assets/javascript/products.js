import debounce from './debounce';

document.addEventListener('DOMContentLoaded', function () {
  const searchForm = document.getElementById('search-form');
  const searchInput = document.getElementById('search-bar');
  const productsListContainer = document.getElementById(
    'products-list-container'
  );

  let typingTimer;

  const delayedSearch = debounce(function () {
    const searchValue = encodeURIComponent(searchInput.value.trim());

    if (searchValue !== '') {
      clearTimeout(typingTimer);

      typingTimer = setTimeout(function () {
        const request = new XMLHttpRequest();

        request.open('GET', `${searchForm.action}?search=${searchValue}`, true);
        request.setRequestHeader('X-Requested-With', 'XMLHttpRequest');

        request.onreadystatechange = function () {
          if (
            request.readyState === XMLHttpRequest.DONE &&
            request.status === 200
          ) {
            productsListContainer.innerHTML = request.responseText;
          }
        };

        request.send();
      }, 500);
    }
  }, 300);
  searchInput.addEventListener('input', delayedSearch);
});
