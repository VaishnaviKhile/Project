
import './App.css';
import {BrowserRouter,Routes,Route} from 'react-router-dom'
import Home from './pages/Home';
import About from './pages/About';
import Contact from './pages/Contact';
import Pagenotfound from './pages/Pagenotfound';
import Menu  from './pages/Menu';


function App() {
  return (
    <div className="App">
      <BrowserRouter>
       <Routes> {/* this use as container */}
          {/* path use for routing to that page    an element use for which page to show */}
          <Route path='/'  element={<Home/>}/>
          <Route path='/about' element={<About/>}/>
          <Route path='/contact'  element={<Contact/>}/>
          <Route path='/menu'  element={<Menu/>}/>
          <Route path='*'  element={<Pagenotfound/>}/>
         

         
        </Routes>
      
      </BrowserRouter>
      
    </div>
  );
}

export default App;
