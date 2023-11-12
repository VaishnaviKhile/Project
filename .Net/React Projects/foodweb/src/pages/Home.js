import React from 'react'
import Layout from '../components/Layout/Layout'
import { Link } from 'react-router-dom'
import background from '../Images/background.jpg'
import '../styles/HomeStyles.css'

const Home = () => {
  return (
    <Layout>
       <div className="home" style={{backgroundImage:`url(${background})`}}>
        <div className="headerContainer">
          <h1>Food Website</h1>
          <p>Best food in India</p>
          <Link to='/menu'>
          <button>
            ORDER NOW
          </button>
          </Link>
          
        </div>
       </div>
    </Layout>
  )
}

export default Home