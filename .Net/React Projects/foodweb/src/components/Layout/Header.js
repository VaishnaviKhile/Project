import React,{useState} from 'react'
import { AppBar, Box, Divider, Drawer, IconButton, Toolbar, Typography } from '@mui/material'
import logo from '../../Images/logo.jpg'

// import FastfoodIcon from '@mui/icons-material/Fastfood'
import { NavLink} from 'react-router-dom'
import '../../styles/HeaderStyles.css'
import MenuIcon from '@mui/icons-material/Menu';
const Header = () => {

   const [mobileOpen, setMobileOpen] = useState(false)

   //handle menu click
   const handleDrawerToggle =() =>{
        setMobileOpen(!mobileOpen)
   }
   //menu drawer
   const drawer =(
    <Box onClick={handleDrawerToggle} sx={{bgcolor:"black"}}>
        <Typography color={'goldenrod'} variant='h6' component='div' sx={{flexGrow:1 , my:2}}>
        <img src={logo} alt='logo' height={"70"} width='200'/>
                {/* <FastfoodIcon/> */}
                {/* My Restaurant */}
              </Typography>  
                <Divider/>
              
                <ul className='mobile-navigation'>
                  <li>
                    <NavLink activeClassName='active' to={'/'}>Home</NavLink>
                  </li>
                  <li>
                    <NavLink to={'/menu'}>Menu</NavLink>
                  </li>
                  <li>
                    <NavLink to={'/about'}>About</NavLink>
                  </li>
                  <li>
                    <NavLink to={'/contact'}>Contact</NavLink>
                  </li>
                </ul>

              
    </Box>
   )

  return (
    <>
      <Box>
        <AppBar component={'nav'} sx={{bgcolor:"black"}}>
          {/* to fixed sizing we use toolbar */}
          <Toolbar>
            <IconButton 
             color='inherit' aria-label='open drawer' edge='start' sx={{mr:2, display:{sm:"none"}}} onClick={handleDrawerToggle}
            >
                <MenuIcon/>
            </IconButton>
             <Typography color={'goldenrod'} variant='h6' component='div' sx={{flexGrow:1}}>
              <img src={logo} alt='logo' height={"70"} width='250'/>
               {/*  <FastfoodIcon/> */}
                {/* My Restaurant */}
              </Typography>  

              <Box sx={{display:{xs:'none', sm:"block"}}}>
                <ul className='navigation-menu'>
                  <li>
                    <NavLink activeClassName='active' to={'/'}>Home</NavLink>
                  </li>
                  <li>
                    <NavLink to={'/menu'}>Menu</NavLink>
                  </li>
                  <li>
                    <NavLink to={'/about'}>About</NavLink>
                  </li>
                  <li>
                    <NavLink to={'/contact'}>Contact</NavLink>
                  </li>
                </ul>

              </Box>
          </Toolbar>
          
        </AppBar>
      <Box component='nav'>
        <Drawer variant='temparary' 
         open={mobileOpen}
         onClose={handleDrawerToggle}
         sx={{display:{xs:'block' , sm:'none'} , "& .MuiDrawer-paper":{boxSizing:"border-box", width:"240px"}}}


        >
          {drawer}
        </Drawer>
      </Box>
      <Box >

        <Toolbar/>
      </Box>
        

      </Box>
    </>
  )
}

export default Header