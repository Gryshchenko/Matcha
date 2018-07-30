import axios from 'axios';

export function PostData(type, userData) {
  let BaseUrl = 'http://167.99.33.181/matcha/php/public/index.php/';
  return new Promise((resolve, reject) => {
    axios.post(BaseUrl + type, userData)
    .then(res => {
      resolve(res.data);
    })
    .catch(error => {
      reject(error);
    });
  });
}
