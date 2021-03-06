const form = document.getElementById('Form');
const search = document.getElementById('search');
const result = document.getElementById('result');
const more = document.getElementById('more');


const apiURL ='https://api.lyrics.ovh';

//Search by song or artist
function searchSong(term){
    fetch(`${apiURL}/suggest/${term}`)
    .then(res => res.json())
    .then(data => console.log(data));
}

//Event listeners
form.addEventListener('submit', e => {
    e.preventDefault();

    const searchTerm = search.value.trim();

    if(!searchTerm){
        alert('Please type in a search term');
    } else {
        searchSong(searchTerm);
    }
})

/*form.addEventListener('submit', e=> {
    e.preventDefault();

    const searchTerm = search.value.trim();

    if(!searchTerm){
        alert('Please type in a search term');
    }else{    
    searchSong(searchTerm);
    }

});*/