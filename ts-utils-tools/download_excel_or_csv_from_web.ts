/**
 * sample code for downloading excel or csv file from web.
 * 
 */
import axios from 'axios';
import { saveAs } from 'file-saver';


const downloadFile = async (url:  string, fileName: string) => {

  try {
    // use axios to get response. 
    const response = await axios({
      url,
      method: 'GET',
      responseType: 'blob', // setting the type of data is blob.
    });

    // access file by getting response. 
    const blob = new Blob([response.data], {type: response.headers['content-type']});
    saveAs(blob, fileName);

  } catch (error) {
    console.error(error);
  }
}


// download CSV
downloadFile('http://example.com/data.csv', 'data.csv');

// download Excel
downloadFile('http://example.com/data.xlsx', 'data.xlsx');