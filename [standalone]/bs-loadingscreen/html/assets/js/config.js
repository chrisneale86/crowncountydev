const config = {
    // General Settings
    serverName: "Crown & County RP",
    logo: "assets/img/logo.png",
    
    // Background Settings
    backgroundType: "video", // Options: "video", "youtube", "image", "slideshow"
    background: "assets/video/background-video.mp4",
    backgroundImage: "assets/img/background_1.png",
    
    // Slideshow Settings
    backgroundImages: [
        "assets/img/background_1.png",
        "assets/img/background_2.jpg",
        "assets/img/background_3.jpg",
        "assets/img/background_4.jpg"
        // Add more images here
    ],
    slideshowEnabled: false, // Set to true to enable slideshow mode
    slideshowDuration: 5000, // Duration in milliseconds (5 seconds)
    
    // YouTube-specific Configuration
    YouTubeID: "u5IuKGp2LWY",
    YouTubeStartTime: 0,
    YouTubeVolume: 0,
    YouTubeLoop: true,
    
    // Music Configuration
    enableMusic: true,
    defaultVolume: 0.1,
    musicList: [
        {name: "CrownandCountyTheme", path: "assets/music/CrownandCountyTheme.mp3"},
        {name: "CrownandCounty2", path: "assets/music/CrownandCounty2.mp3"},
        {name: "CrownandCounty1", path: "assets/music/CrownandCounty1.mp3"},
    ],
    randomizeMusic: true,
    
    // Text Configuration
    loadingText: "Loading Server...",
    welcomeText: "Welcome, %s",
    tips: [
        "Press I to open your inventory.",
        "Use T to open the chat.",
        "Visit our Discord for help and updates.",
        "Respect other players and follow server rules.",
        "Find work in towns to earn money.",
        "Explore the world and discover hidden secrets.",
        "Horses are your most loyal companions in the Wild West."
    ],
    tipInterval: 4000,
    
    // Colors
    colors: {
        primary: "#B12A2A",
        text: "#FFFFFF",
        background: "#000000",
        overlay: "rgba(0, 0, 0, 0.1)"
    }
};
