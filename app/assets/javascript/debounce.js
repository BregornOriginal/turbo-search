export default function debounce(callback, delay) {
  let timeoutId;
  return (...args) => {
    clearTimeout(timeoutId);
    console.log('Waiting for inactivity...');
    timeoutId = setTimeout(() => {
      console.log('Executing debounced function');
      callback(...args);
    }, delay);
  };
}
