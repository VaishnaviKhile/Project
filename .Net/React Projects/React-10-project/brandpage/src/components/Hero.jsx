const HeroSection = () => {
    return(
        <main className="hero container">
            <div className="hero-content">
                <h1>YOUR FEET DESERVE THE BEST</h1>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ea neque fuga sunt optio commodi eaque deleniti quam necessitatibus quidem facilis?</p>
                <div className="hero-button">
                    <button>Shop Now</button>
                    <button className="secondary-btn">Category</button>
                </div>
                <div className="shopping">
                    <p>Also Available On</p>
                    <div className="brand-icons">
                        <img src="/public/images/Amazon.png" alt="amazon" height={30}/>
                        <img src="/public/images/flipkart.png" alt="flipkart" height={30}/>
                    </div>
                </div>
            </div>
            <div className="hero-image">
                <img src="/public/images/shoe.jpg" alt="hero" />
            </div>


        </main>
    );
}

export default HeroSection