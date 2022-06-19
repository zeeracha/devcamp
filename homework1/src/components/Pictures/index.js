import React,{useState} from 'react'
import "./Style.css"

export default function Pictures() {

  const[like,setlike] = useState({
   
  }
  )
  const [comment,setcomment] = useState({
    
  })

  const Card = [
    {
      id : "01",
      imgSrc : "https://picsum.photos/200/300",
      createBy : "Johnny",
      likeCount : 75,
      commentCount : 2
    },
    {
      id : "02",
      imgSrc : "https://picsum.photos/200/301",
      createBy : "Mark",
      likeCount : 32,
      commentCount : 3
    },
    {
      id : "03",
      imgSrc : "https://picsum.photos/200/302",
      createBy : "Ten",
      likeCount : 756,
      commentCount : 5
    },
    {
      id : "04",
      imgSrc : "https://picsum.photos/200/303",
      createBy : "Yuta",
      likeCount : 123,
      commentCount : 1
    }
   
  ]
  const list = Card.map(x=>
  <div className='grid-item'>
    <img src={x.imgSrc} id={x.id}></img> 
        <h3>createBy : {x.createBy}</h3>
            <p>Like : {x.likeCount}</p>
                <p>Comment : {x.commentCount}</p></div>)

  return (
    <div className='PictureCard'>{list}</div>
  )
}