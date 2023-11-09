class MockupData {
  /*
  adsToDisplay =
    [
      [
        App Thumbnail (Image Url),
        App Icon (Image Url),
        App Name (String),
        App Description (String),
      ],
    ]
  */
  static List<List> adsToDisplay = [
    [
      'https://i.insider.com/5a027e5a3dbef41d008b489f?width=750&format=jpeg&auto=webp',
      'https://play-lh.googleusercontent.com/8bEDXZJiGPfDtixqDOuaEBO55Gmx84dnkAz0E0l8QaBzzetfG29LCxbt_W7Q_HC4kA=w240-h480-rw',
      'Worlds With Friends',
      'Joey just played LAW for 7 points!',
    ],
    [
      'https://play-lh.googleusercontent.com/n-F4WHCBOTatxlbZURBJZZGatA8zLsEdMvp7evItp_j_8SQjURY93Gx1erxsB-0khg=w526-h296-rw',
      'https://play-lh.googleusercontent.com/aeLzzmIFeBXkKdNWQACSRxJ9eG_XnaAU_fsRlo3Ti9rYh3yutQmjqUnTcB_ECfO0mAk',
      'Uno!',
      "Let's play Uno!",
    ],
    [
      'https://i.insider.com/5a027e5a3dbef41d008b489f?width=750&format=jpeg&auto=webp',
      'https://play-lh.googleusercontent.com/8bEDXZJiGPfDtixqDOuaEBO55Gmx84dnkAz0E0l8QaBzzetfG29LCxbt_W7Q_HC4kA=w240-h480-rw',
      'Worlds With Friends',
      'Joey just played LAW for 7 points!',
    ],
    [
      'https://play-lh.googleusercontent.com/n-F4WHCBOTatxlbZURBJZZGatA8zLsEdMvp7evItp_j_8SQjURY93Gx1erxsB-0khg=w526-h296-rw',
      'https://play-lh.googleusercontent.com/aeLzzmIFeBXkKdNWQACSRxJ9eG_XnaAU_fsRlo3Ti9rYh3yutQmjqUnTcB_ECfO0mAk',
      'Uno!',
      "Let's play Uno!",
    ]
  ];

  /*
  gameToDisplay =
    [
      [
        App Icon (Image Url),
        IsNotice (Boolean),
      ],
    ]
  */
  static List<List> gameToDisplay = [
    [
      'https://play-lh.googleusercontent.com/aeLzzmIFeBXkKdNWQACSRxJ9eG_XnaAU_fsRlo3Ti9rYh3yutQmjqUnTcB_ECfO0mAk',
      true
    ],
    [
      'https://play-lh.googleusercontent.com/8bEDXZJiGPfDtixqDOuaEBO55Gmx84dnkAz0E0l8QaBzzetfG29LCxbt_W7Q_HC4kA=w240-h480-rw',
      false
    ],
    [
      'https://play-lh.googleusercontent.com/aeLzzmIFeBXkKdNWQACSRxJ9eG_XnaAU_fsRlo3Ti9rYh3yutQmjqUnTcB_ECfO0mAk',
      false
    ],
    [
      'https://play-lh.googleusercontent.com/8bEDXZJiGPfDtixqDOuaEBO55Gmx84dnkAz0E0l8QaBzzetfG29LCxbt_W7Q_HC4kA=w240-h480-rw',
      false
    ],
  ];

  /*
  posts =
    [
      {
        'header' :
        [
          Profile Icon (Image Url),
          Profile Name (String),
          Game Name (String),
          Play Time (String),
          
        ],
        'body' :
        [
          Post Description (String),
          Thumnail (Image Url),
          Small Thumbnail (Image Url),
          Game Name (String),
          Follwer Number (String),       
          Number of viewers (String),   
        ],
        
      },
    ]
  */
  static List<Map<String, List>> posts = [
    {
      'header': [
        'https://cdn-icons-png.flaticon.com/512/3135/3135715.png',
        'UserA',
        'Fortnite',
        '32 minutes ago',
      ],
      'body': [
        'Hello maeniaces!',
        'https://cdn2.unrealengine.com/Fortnite%2Fblog%2Fstream-the-fortnite-world-cup-finals-in-fortnite%2FSteamPiPWorldCup_Screenshot1-2559x1379-3efa27c18696831217def95a3a77bf12526b2d69.jpg',
        'https://w0.peakpx.com/wallpaper/807/126/HD-wallpaper-fortnite-technology-techno.jpg',
        'Fortnite',
        '4M Following',
        '4.2k'
      ],
      // 'footer' :[

      // ]
    },
    {
      'header': [
        'https://cdn-icons-png.flaticon.com/512/3135/3135715.png',
        'UserB',
        'Fortnite',
        '50 minutes ago',
      ],
      'body': [
        'Hola Amigo',
        'https://d.newsweek.com/en/full/846377/ninja-fortnite-drake.png',
        'https://w0.peakpx.com/wallpaper/807/126/HD-wallpaper-fortnite-technology-techno.jpg',
        'Fortnite',
        '4M Following',
        '1M'
      ],
      // 'footer' :[

      // ]
    },
    {
      'header': [
        'https://cdn-icons-png.flaticon.com/512/3135/3135715.png',
        'UserC',
        'Fortnite',
        '1 hour ago',
      ],
      'body': [
        'Hi there',
        'https://cdn.vox-cdn.com/thumbor/3bUuGFGq2O4e0twslA6QFwMxCo4=/0x0:1436x795/1200x0/filters:focal(0x0:1436x795):no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/16128412/Screen_Shot_2019_04_15_at_11.40.57_AM.png',
        'https://w0.peakpx.com/wallpaper/807/126/HD-wallpaper-fortnite-technology-techno.jpg',
        'Fortnite',
        '4M Following',
        '567',
      ],
    },
  ];
}
