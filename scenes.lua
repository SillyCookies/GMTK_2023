return {
   CAFE= {
      "SAM sits in a cafe, at the window, watching people walk by.",
      "SAM sips the coffee as ALEX walks in. The coffee is terrible",
      "ALEX: Sam?", 
      "SAM: Alex, Hi!",  	
      "ALEX sits down.",
      "ALEX: It’s great to finally meet you!",

      romantic={"It’s love at first sight.", 
	    "SAM sips coffee and forgets how bad it is, ALEX drinks plenty of tea.",
		"Time passes them by, and the day suddenly approaches evening.",
		
		"ALEX: Look at the time, I can’t believe it!",
		"SAM: Time flies when you’re having fun.",
		"ALEX smiles shyly",
		"ALEX: I’d really like to meet again sometime.",
		"SAM: yeah, me too.",
		"ALEX: I really have to go now, but call me, ok?",
		
		"They stand up and stammer their goodbyes at the door.",
	    next="PHONE_CALL"},
      happy={
	 "ALEX: Whenever I go to one of these cafes, I always hope they have more kinds of tea. But it’s usually just : black or green? And practically supermarket quality!",
	 
	 "SAM: Their coffee’s not great either haha.",
	 
	 "ALEX: oops, I think the barista heard you.",
	 
	 "SAM: *muttering* Make our own cafe, with yuzu and espresso",
	 
	 "SAM and Alex get on well, and the conversation flows faster than the tea and coffee, and after an hour or two they part ways.",
	 
	 "ALEX: Thanks, I had fun.",
	 
	 "SAM: Me too. See you around.",
	 
	 "ALEX: Yeah see you, let’s hang out some time.",
	 next="CHANCE_MEETING"},

      tense={
	  "SAM flatters ALEX with compliments, and asks all about ALEX’s interests.",
	  "Somehow the conversation repeatedly drifts to SAM’s “crazy, lying” ex.",
	  
	  "ALEX: Sam, I’m really sorry but I have to go now.",
	  
	  "SAM: Already? We just got here.",
	  "ALEX: I know, I’m sorry.",
	  
	  "SAM: I’ll get the bill.",
	  
	  "ALEX: No that’s alright, I’ll pay for my tea.",
	  
	  "SAM: Fine. See you later.",
	  next="PHONE_CALL"
      }
   },


   PHONE_CALL={
      "SAM stares at the phone in their hand, feeling emotions wash over. Sam decides - ALEX should know about their feelings.",
      "The phone rings.",
      
      function ()
	 if first_date_went_poorly then
	    return
	       {"The phone rings for what seems an eternity. Eventually ALEX picks up.",
		"ALEX: “Hello? Sam?”"}
	 else
	    return {"The phone is picked up almost immediately.",
	     "ALEX: “SAM, you called!” ALEX’s voice turns coy. “ I guess that means… you liked me?”"}
	 end
      end,
      
      tense={
	 "SAM: “I did.” ",
	 "SAM is quiet for a moment. ALEX waits for them to continue, unsure of what SAM is waiting for. After a few moments SAM speaks again, sounding annoyed.",
	 "SAM: “Well, did you like me too?” ",
	 "ALEX is taken aback.",
	 "ALEX: “Uh, I don’t think I’d pick up the phone like that if I didn’t?”",
	 "SAM: “It’s kind of disrespectful don’t you think? Not to say anything back like that?”",
	 "ALEX: “Hey relax, I didn’t mean anything by it.”",
	 "SAM: “Well anyway, want to meet Saturday?”",
	 "ALEX: “Actually, I’m meeting someone on Saturday. I’m pretty booked all week actually. I’m not sure I’ll have time to hang out.”",
	 "SAM: “Who are you meeting on Saturday? You told me you tend to spend Saturdays at home doing chores?”",
	 "ALEX: “A friend, we’re going bowling”",
	 "SAM: “Which friend is this?”",
	 "ALEX: “You know I really have to go now. Bye.”",
	 next="FOLLOWING"},

      romantic={
	 "SAM: “Uh, hi, uhm.” SAM clears their throat. “I was wondering whether you’d like to go on another date?”",
	 
	 function()
	    if first_date_went_poorly then
	       return
		  {"ALEX: “I don’t know, I’m not sure we had that much of a connection?”",
		   "SAM: “I- I know what you mean. I’m sorry. I was really nervous. My previous relationship was a wreck and- I don’t want to start all that again. Would you give me another chance? I actually really like you and I’ve been kicking myself all night for how I acted.”",
		   "ALEX is quiet for a moment."}
	    else
	       return
		  {"Sam blushes",
		   "SAM: “Uh, yes, I did, I liked the whole date really. Except the coffee. We really should look for a better coffee place.”",
		   "ALEX: “Is that the invitation to a second date then?”.",
		   "SAM stutters a moment as ALEX laughs"}
	    end
	 end,
	 
	 "ALEX: “I’d love to”",
	 "SAM: “Oh-ok! How about Saturday?",
	 "ALEX and SAM continue to talk on the phone for another hour, enjoying every second of it.",
	 next="HANGING_OUT"
      },
      
      happy={
	 function()
	    if first_date_went_poorly then
	       return
		  {"SAM: “Uhm, hi ALEX, I was hoping you’d like to meet up again?”",
		   "ALEX: “I don’t know, I’m not sure we had that much of a connection?”",
		   "SAM: “I- I know what you mean. I’m sorry. I was really nervous. My previous relationship was a wreck and- I don’t want to start all that again. I’m clearly not ready for a new romantic relationship and have some growing to do first. But I did actually really like hanging out with you and would love to get to know you better. Would you give me a second chance? No romantic motives, I promise.”",
		   
		   "ALEX is quiet for a moment",
		   
		   "ALEX: “Alright, what do you have in mind?”"
		  }
	    else
	       return
		  {"SAM laughs, delighted by ALEX’s confidence.",
		   "SAM: “Of course I did! I enjoyed our chat a lot really. I was hoping we could hang out again? At a place with better tea and coffee this time.”",
		   "ALEX: “That would be fun! Do you have a place in mind?”"}
	    end
	 end,
	 "SAM: “How about the park? I can bring some cold drinks, bring some music, we can just people watch and chat.”",
	 "ALEX: “Sounds great. Saturday work for you?”",
	 
	 "ALEX and SAM continue to talk on the phone for another hour, enjoying every second of it.",
      next="HANGING_OUT"}
   },

   CHANCE_MEETING={
      "ALEX approaches the bus stop and lets out a breath of relief. Made it on time. Relaxing, ALEX looks around.",
      "With a shock ALEX recognises someone in the crowd of commuters. SAM waves, a grin on their face.",
      
      "SAM: “What a surprise to see you here!”",
      "ALEX: “SAM! Where are you off to?”",
      "SAM: “Oh I take this bus occasionally to visit the park. You?”",
      "ALEX: “I take it to visit my parents. I thought I’d surprise them and share some tea.”",

      happy={
	 "SAM: “ah, then you’re busy. I was going to invite you to hang with me.”",
	 "SAM gestures to their backpack.",
	 "SAM: “I have cold drinks and some snacks with me. We could continue our conversation from yesterday. I enjoyed talking about our fantasy café.”",
	 "ALEX hesitates and checks the time.",
	 "ALEX: “You know what, I’d love to. It’s still early and I can swing by my parents’ a little later. It’s not like they’re expecting me.”",
      next="HANGING_OUT"},
      
      romantic={
	 "SAM: “A surprise visit to your parents? Then you’re busy I suppose. Shame.”",
	 "SAM pauses and studies ALEX. ALEX feels a fluttering deep inside as SAM’s eyes follow the lines of their face.",
	 
	 "ALEX: “I’m in no rush, they’re not expecting me after all.” ",
	 
	 "ALEX feels their face heating up and looks down in dismay.. SAM smiles and gently reaches for Alex’s hand.",
	 
	 "SAM: “Well, if you have the time… I would love to spend some more time together.”",
	 
	 "ALEX jumps and their breath catches as they glance back up and meet SAM’s eyes. They suddenly feel intensely aware of the people around them.",
	 next="INTIMATE_SCENE"},
      tense={
	 "ALEX feels immediate regret upon sharing that. You don’t share such private information with strangers, do you? And SAM is still practically a stranger. ",
	 "SAM looks thoughtful.",
	 
	 "SAM: “Ah then they live between here and the park? Since that’s where the line ends. It’s a nice neighbourhood. Are you close to them?”",
	 "ALEX: “I don’t know, I guess.”",
	 "SAM: “Do you live around there as well?”",
	 "ALEX: “Ah actually I have to run, I forgot to buy milk. Have a good time at the park!”",
	 
	 "As ALEX flees she can practically feel SAM’s eyes drilling into their back.",
	 next="FOLLOWING"
      }
      
   },

   FOLLOWING={

      "ALEX is walking home. The sky is darkening and long shadows stretch over the street. ALEX has a feeling of being followed.",

      tense={
	 "ALEX turns, and catches a glimpse of someone moving into a side street.",
	 "ALEX pauses, and then continues walking… and then speeds up at the sound of footsteps behind.",
	 
	 "ALEX turns a corner and waits to meet the follower and comes face to face with SAM.",
	 "SAM meets ALEX’s eyes and turns around without a word.",
	 
	 "ALEX: Sam? What the hell?",
	 
	 "SAM is gone.",
	 
	 next="CONFRONTATION"
      },

      happy={
	 "ALEX turns around and spies someone. It’s SAM.",
	 "As ALEX raises a hand in greeting, SAM waves back before turning into a side street. ",
	 
	 next="CONFRONTATION"
      },
	 
      romantic={
	 "ALEX turns to see SAM.",
	 "SAM doesn’t meet ALEX’s eyes. ",
	 
	 "ALEX: Sam?",
	 "SAM reddens",
	 "SAM: um, hi.",
	 "ALEX: Were you following me?",
	 
	 "SAM: n-no, not exactly. sorry.",
	 "ALEX: Not exactly?",
	 
	 "SAM looks resigned.",
	 "SAM: I was working up the courage to say hi.",
	 "ALEX: oh, oh ahahaha",
	 "SAM laughs and finally meets ALEX’s eyes.",
	 "SAM: It was probably kinda creepy, I’m sorry.",
	 "ALEX: *laughing* yeah it was, but It’s ok, I’m glad to see you.",
	 
	 "ALEX: Why were you so shy about talking to me?",
	 
	 function()
	    if first_date_went_poorly then
	       return {
		  "SAM: I really like you, but I was nervous because I don’t think I made the best impression.",
		  "ALEX: haha, ok that’s fair.",
	       }
	    else
	       return {"SAM: I don’t know, I just really like you a lot, and I have a bad habit of imaginging the worst."}
	    end
	 end,
	 
	 "SAM: Want to walk together a little while?",
	 "ALEX: Sure.",
	 
	 "SAM and ALEX take a detour through the park, talking and sharing a kiss before parting ways.",
	 
	 "ALEX calls SAM the next day, and asks to go on another date…",
	 next="INTIMATE SCENE",
      },
   },


   CONFRONTATION={
      mood='tense',

      "Some days later, SAM is standing outside ALEXs apartment building.",
      "SAM looks through the windows, and finds that ALEX isn’t home.",
      "SAM moves to the door and puts down a backpack.",
      
      "ALEX walks up behind SAM.",
      
      "ALEX: What are you doing?",
      
      "SAM turns around, surprised.",
      
      "SAM: Alex, hi. I was just about to knock.",
      
      "ALEX: Sam, you’ve been stalking me, haven’t you.",
      
      "SAM: What? No. I’m just looking out for you, making sure no one bothers you.",
      
      "ALEX: Well it makes me feel unsafe. Stay away from me Sam, or next time I’ll call the police.",
      next="MURDER"
   },


   MURDER={
      "Music locked to tense",
      
      "SAM is in a kitchen, going through drawers.",
      
      "ALEX wakes up in the early morning.",
      "ALEX is too hungry to sleep.",
      "They get up, and walk to the kitchen.",
      "The kitchen door is closed, and a sound comes from within.",
      
      "ALEX’s breath catches. ",
      "Phone in hand, dialling the emergency number, ALEX quickly opens the kitchen door.",
      "SAM is there, looking alarmed.",
      
      "ALEX: Get out of my home! Get out.",
      "ALEX presses “Call”",
      
      "SAM sees the phone and reaches for it, ALEX pulls away through the doorframe.",
      
      "SAM grabs a kitchen knife and lunges after ALEX, screaming.",

      "The call goes through, an operator hears the sound of a struggle."
   },


   HANGING_OUT={

      "Mid morning on a sunny day, SAM is waiting on a street corner.",
      "ALEX arrives and raises their arms.",
      
      "SAM: Hi Alex!",
      "ALEX: Hey! ",
      
      "They exchange a hug.",
      
      "ALEX: It’s good to see you again.",
      
      function()
	 if first_date_went_poorly then
      
	    return {
	       "SAM: I was starting to think you wouldn’t show.",
      
	       "ALEX: Oh sorry, I didn’t think I’d kept you waiting long.",
	       
	       "SAM: It’s all right, let’s get to the park."}
	    
	 else
	    return {
      
	       "SAM:  It’s great weather, let’s head to the park.",
	       
	       "ALEX and SAM hang out in the park, SAM brought a cooler of cold drinks."
	    }
	 end
      end,
      
      tense={
	 "SAM: Have a beer.",
	 
	 "ALEX: No, thank you. It’s a little early in the day for beer.",
	 
	 "SAM: oh come on, relax it’s just beer.",
	 
	 "ALEX: No, thank you.",
	 
	 "SAM frowns and reluctantly puts the beer back.",
	 
	 "The hot sun beats down on the park. As they watch people go by, SAM  mocks the appearance of passerby.",
	 "ALEX spots a puppy, being let out for a walk.",
	 "ALEX strikes up a conversation with the owner, asking to pet the puppy.",
	 "SAM stands up to join them.",
	 
	 "SAM: Move along, we were having a conversation here.",
	 "ALEX: Well that’s rude SAM, I was talking to this man.",
	 "SAM: No you were talking to me, remember.",
	 "PUPPY MAN: Excuse me, I’ll just finish Bozo’s walk.",
	 
	 "ALEX: I think I’ll just head home.",
	 "SAM: What? Come on, stay here.",
	 
	 "ALEX: No, but I hope you enjoy the sun and beer.",
	 
	 next="FOLLOWING"},
      
      
      happy={
	 "SAM: I joked earlier about starting a cafe. I have to say I’m starting to actually consider it.",
	 
	 "ALEX: haha it crossed my mind too! With good tea?",
	 
	 "SAM: Yes, I think you made a good point. How many cafes are there that actually have a good selection of teas?",
	 
	 "ALEX: Do you know a lot about tea?",
	 
	 "SAM: I prefer coffee myself, but my mom is really into tea. ",
	 
	 "ALEX: Woman after my own heart.",
	 
	 "SAM: Then there’s the coffee. I think I can tell good beans from bad, but I’m not sure how you go about getting it in bulk.",
	 
	 "ALEX: I know someone who can help with that.",
	 
	 "SAM and ALEX have fun figuring out how managing a cafe would work.",
	 
	 next="BUSINESS_MEETING"},
      
      romantic={
	 "The sun shines on the lively park, and the cold drinks are refreshing.",
	 "SAM and ALEX talk in the shade of a tree",
	 "The conversation breaks and they listen to the wind whispering through the leaves",
	 "Until SAM notices ALEX watching them closely",
	 "SAM: What?",
	 "ALEX looks down away and then meets SAM's eyes again",
	 "They move closer.",
	 "They kiss.",
	 "They part, self consciously.",
	 "ALEX didn't go see their parents that day."
      next="INTIMATE SCENE",
      }
   },
   
   
   
   
   PROPOSAL={
      "The curtains flutter gently in the open window. Birdsong and the faint sounds of the city drift on the breeze, into ALEX’s bedroom.",
      
      
      romantic={
	 "SAM and ALEX lie on their sides facing each other. They can’t seem to stop smiling. They lie there for a while, just basking in the bliss of their shared privacy.",
	 "ALEX reaches out to brush a lock of SAM’s hair behind their ear.",
	 "ALEX: “I don’t think I’ve ever felt this relaxed and happy with anyone before.”",
	 "SAM gently catches ALEX’s hand in their own and holds it: ",
	 "SAM: “I want this moment to last forever.”",
	 "ALEX seems to work up the courage to say something. SAM stays quiet and smiles encouragingly.",
	 "ALEX: “I’m actually going to have dinner with my parents this Thursday. Would you like to join me?”",
	 "SAM: “You’d like me to meet your parents?”",
	 "ALEX blushes.",
	 "ALEX: “They’re important to me. And you are too. You should meet.”",
	 "SAM gives ALEX the most brilliant smile and draws them into a tight hug.",
	 "SAM: “Of course I’ll come. I’d love to meet them.”",
	 next="PARENTS"},
      

      tense={
	 "ALEX: “Sam, I don’t know…”",
	 "SAM: “It’s not such a big deal, it would just really make me happy.”",
	 "ALEX: “Yeah but-”",
	 "SAM: “I mean, I don’t get why you won’t do this for me? I’m not asking for anything too crazy here.”",
	 "ALEX: “I’m just not comfortable with it.”",
	 "ALEX moves to the bed to pick their shirt back up. SAM follows and angrily tries to snatch the shirt out of their hand.",
	 "SAM: “Don’t you see how selfish you’re being right now? I thought you cared about me!”",
	 "ALEX: “Sam stop, give me back my shirt.”",
	 "SAM: “I can’t believe you!”",
	 
	 "SAM snatches up their clothes and storms out, taking ALEX’s shirt with them.",
	 next="MURDER"},
   },

   
   
   PARENTS={
      "SAM and ALEX stand on the porch, hands clasped. ",
      "ALEX: “There’s no need to be nervous”",
      "SAM (nervously): “I know”",
      "ALEX: “They’re going to love you”",
      "SAM: “You think?”",
      "ALEX laughs “How could they not? And in any case I had a strong word with them that they are not to make your life difficult in any way.”",
      "Some motion catches SAM’s eyes. He sees a curtain fall back into place behind the window. He swallows heavily.",
      "SAM: “I think they know we’re here.”",
      "ALEX: “Ready? We’ll do this together.”",
      "ALEX squeezes SAM’s hand. SAM looks at ALEX and all their fears melt away. Together.",
      
      "SAM knocks on the door.",
   },
   BUSINESS={
      "The colourful sign reads Chance Encounter. The bell at the door let out a merry jingle as a customer walks into the bustling little corner café.",
      
      "ALEX: “Sam, one jasmin and two yuzu teas to go!”",
      "SAM: “Gotcha!”",
      
      "The café is filled with neighbours coming to check out the new enterprise. ALEX and SAM are in a whirl preparing and serving all the drinks. The happy sounds of sharing a good conversation over a good drink fill the air, creating a cosy and welcoming ambiance.",
      
      "SAM catches ALEX’s eyes as they work and they share an elated grin. SAM wonders about the turn their life has taken since meeting ALEX. SAM hums a happy tune as he serves the teas."},
   
   
   BUSINESS_MEETING={
	happy={
      "ALEX and SAM get together to talk more seriously about opening a café together.",
	  "They've picked successful local shop and sit at a table, observing the space around them.",
	  "SAM: \"We have to consider acoustics. Echoin is uncomfortable, we're going to want some plants and cloth decorations to dampen the sounds.\"",
	  "ALEX: \"And it's good to consider the machines if you have an open kitchen. Some of them are so noisy they'll interrupt conversation whenever they are used\"",
	  "SAM: \"Speaking of the kitchen, I'm sure there are a bunch of certificates and permits to arrange with respect to health and safety.\"",
	  "They get really into it and by the end  of the afternoon they feel confident that they could actually pull it off.",
	  "ALEX: \"What would we call it?\""
	  next = "BUSINESS"}
   },
   
   
   INTIMATE_SCENE={
      "*insert scene here*",
      next="PROPOSAL"
   }
   
}
