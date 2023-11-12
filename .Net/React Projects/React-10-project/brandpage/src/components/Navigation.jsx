//import React from 'react'

function Navigation() {
  return (
    <>
          <nav>
         <div className="logo">
            <img src="../public/images/brand_logo.png" alt="logo" height={'70'} width={'200'}/>
          </div>
          <ul>
            <li href='#'>Menu</li>
            <li href='#'>Location</li>
            <li href='#'>About</li>
            <li href='#'>Contact</li>
          </ul>
          <button>login</button>
          </nav>
    </>
  )
}

export default Navigation