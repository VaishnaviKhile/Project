import React from 'react'
import Header from './Header'
import Footer from './Footer'

const Layout = ({children}) => {   //we are destructuring props.children in div otherwise we need to write props.children

  return (
    //we are wrapping content to use in pages folder
     <>       
        <Header/>
        {/* this will use for whatever component wrapped by layout that will display on chidren props    */}
       <div>  
          {children}  
       </div>
       <Footer/>
    </>
  )
}

export default Layout