import axios from 'axios';

let API_URL = 'http://localhost:4000/api/cars';


const obtenerCarrosPaginados = async (page, size, sort) => {
   const params = {
      page,
      size, sort
   };
   try {
      const response = await axios.get(API_URL, null, { params });
      return response.data;
   } catch (error) {
      throw error;
   }
};

export default {
   obtenerCarrosPaginados
};