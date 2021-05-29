# README

## App Explanation
  TRT is a web application for streaming anime that happens to be a clone of VRV. People are able to see some of their favorite anime and view clips from them as well as add ones to watch in the future. It takes a good deal of inspiration from VRV with a few twists of its own.
  
## Technologies Used
  TRT uses a ruby on rails backend and a react-redux frontend using javascript ran in a node environmentn with npm to manage all of my various dependencies as well as webpack as a bundler for the modules I need. I used SCSS because of how lightweight it is and intutive in terms of variables and to DRY up my styles files.
  
 ## Link to Live Site 
  https://trt.herokuapp.com/#/
  
  ## Features
   ### Watchlists
   I implemented a way for users to be able to save anime to their watchlists which essentially just meant the first episode for them to start I did this by           implementing a joins tables. This was the best option because ever user is essentially seeing the same anime and episodes so I knew I would need a many to            many relationship where people can have many anime epsidoes and vice versa. 
   ### AWS storage
   I needed a good and reliable way to store all my image and video data. I knew that my postgres databse couldnt handle all of it so Amazon's S3 cloud storage        was the best option. It also gives me the peace of mind reliable url's for my images and videos that I know wont be taken down living blank spaces for some of      my pages.
  ### Search Feature
   I wanted people to be able to not only search anime by name but by genre as well. I also knew that some animes fell into multiple categories which led me to         another joins tables for the many to many relationship between anime and genres.
  ### Pictre in Picture mode
   I gave users the ability to not only continue watching a video while they procure my website but also the ability to do other things on their machine as well       all while being able to not only view the episod but resize and move at their ledger.
   
 
 ## Most Difficult Feature
  I needed to implement a search feature that allowed you to search through all of my anime by typing in the name or clicking on genres with no input. The problem     was i needed to have the right anime to show the user as the interacted with the search modal but I didnt want to keep making requests to the backend and querying   my database. I was also running into the problem of other components on the page needing access to informaiton when in only needed the anime name and picture for   the modal. What I ended up doing was just storing all of the anime in my database in my rdux state when the component modal mounts and creating selectors to         filter   them in my component so I also wouldnt have to rerender my component either. All that changes is the array of anime names and image urls I render on the   screen. 
  
  
  
  
