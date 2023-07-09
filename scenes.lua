return {
   Cafe= {
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
	    next="Phonecall"},
      happy={
	 "ALEX: Whenever I go to one of these cafes, I always hope they have more kinds of tea. But it’s usually just : black or green? And practically supermarket quality!",
	 
	 "SAM: Their coffee’s not great either haha.",
	 
	 "ALEX: oops, I think the barista heard you.",
	 
	 "SAM: *muttering* Make our own cafe, with yuzu and espresso",
	 
	 "SAM and Alex get on well, and the conversation flows faster than the tea and coffee, and after an hour or two they part ways.",
	 
	 "ALEX: Thanks, I had fun.",
	 
	 "SAM: Me too. See you around.",
	 
	 "ALEX: Yeah see you, let’s hang out some time.",
	 next="Chancemeeting"},

      tense={
	  "SAM flatters ALEX with compliments, and asks all about ALEX’s interests.",
	  "Somehow the conversation repeatedly drifts to SAM’s “crazy, lying” ex.",
	  
	  "ALEX: Sam, I’m really sorry but I have to go now.",
	  
	  "SAM: Already? We just got here.",
	  "ALEX: I know, I’m sorry.",
	  
	  "SAM: I’ll get the bill.",
	  
	  "ALEX: No that’s alright, I’ll pay for my tea.",
	  
	  "SAM: Fine. See you later.",
	  next="Phonecall"
      }
   },


   Phonecall={
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
	 "ALEX: “You know I really have to go now. Bye.”"},

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
	 "ALEX and SAM continue to talk on the phone for another hour, enjoying every second of it."
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
	 "",
	 "ALEX and SAM continue to talk on the phone for another hour, enjoying every second of it."}
   },

   Chancemeeting={
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
	 "ALEX: “You know what, I’d love to. It’s still early and I can swing by my parents’ a little later. It’s not like they’re expecting me.”"},

      romantic={
	 "SAM: “A surprise visit to your parents? Then you’re busy I suppose. Shame.”",
	 "SAM pauses and studies ALEX. ALEX feels a fluttering deep inside as SAM’s eyes follow the lines of their face.",
	 
	 "ALEX: “I’m in no rush, they’re not expecting me after all.” ",
	 
	 "ALEX feels their face heating up and looks down in dismay.. SAM smiles and gently reaches for Alex’s hand.",
	 
	 "SAM: “Well, if you have the time… I would love to spend some more time together.”",
	 
	 "ALEX jumps and their breath catches as they glance back up and meet SAM’s eyes. They suddenly feel intensely aware of the people around them."},
      tense={
	 "ALEX feels immediate regret upon sharing that. You don’t share such private information with strangers, do you? And SAM is still practically a stranger. ",
	 "SAM looks thoughtful.",
	 
	 "SAM: “Ah then they live between here and the park? Since that’s where the line ends. It’s a nice neighbourhood. Are you close to them?”",
	 "ALEX: “I don’t know, I guess.”",
	 "SAM: “Do you live around there as well?”",
	 "ALEX: “Ah actually I have to run, I forgot to buy milk. Have a good time at the park!”",
	 
	 "As ALEX flees she can practically feel SAM’s eyes drilling into their back. "
      }

   }
}
