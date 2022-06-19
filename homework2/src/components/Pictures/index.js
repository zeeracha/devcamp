import React,{useState} from 'react'
import "./Style.css"

export default function Pictures() {

  /*const[like,setlike] = useState({
   
  }
  )*/
  const [posts,setPosts] = useState([
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
   
  ]);

  const handleLikePost = (postID) => {
    const newPosts = posts.map((post) =>{
      if (post.id === postID){
        post.likeCount += 1;
      }
      return post;
    });
    setPosts(newPosts);
  }


  const handleCommentPost = (event, postID) =>{
    if(event.key === "Enter"){
      alert ("Thank You 🙏🏻");
      const newPosts = posts.map((post) =>{
        if (post.id === postID){
          post.commentCount +=1 ;
        }
        return post;
      });
      setPosts(newPosts);
    }
  };



  return (
    <div className="Container">
        <div
        style={{
          display: "flex",
          justifyContent: "center",
          width: "100%",
          color: "#000",
          fontWeight: "bold",
          fontFamily: "sans-serif",
          textAlign: "center",
          padding: "15",
          margin: "0",
        }}>
          {posts.map((post) =>(
            <div key={post.id} style={{
              border: "1px solid #0C090A",
              width: "200px",
              margin: "10px",
            }}>
              <img src={post.imgSrc} alt="post"/>
              <div>
                <h4>{post.createBy}</h4>
                <p>
                  <span>Like: {post.likeCount}</span>
                  <p>Comment: {post.commentCount}</p>
                </p>
              </div>

              <button onClick={() =>{
                  handleLikePost(post.id);
                }}>
                Like
              </button>
              <input type="text" onKeyPress={(event)=>{
                handleCommentPost(event, post.id);
              }}>
              </input>
            </div>
          ))}
        </div>
    </div>
  )
}
