"WizardBattle" by Cameron Haseyama

[BUGS:
•"take all
add exit list on top
After taking box add dialog directing player back to official
Code more responses for hermit
Code more responses for official
Code more responses for large man
At end it says room description before winning
Add response when new spell is learned
Disable Take all]

Include Adaptive Hints by Eric Eve.

When play begins:
	now left hand status line is "Exits: [exit list]";
	now right hand status line is "[location]".
	
To say exit list:
	let place be location;
	repeat with way running through directions:
		let place be the room way from the location;
		if place is a room, say " [way] ".

When play begins: say "It's a beautiful day in the land of Inferna. You jump out of bed excited to compete in this years annual wizard competition. The winner is declared the best wizard in the city. You may be a new wizard, but you're ready to take on the challenge.

You find yourself in your Cabin.

For hints enter 'hints'."

The description of the player is "On the outside you appear to be an average boy. On the inside magic coarses through your veins."



[Code for Cabin and scenery]
The Cabin is a room. "A cozy house in the woods. A wooden table is in the center of your room and your bed is in the corner. The Forest is to the North."

The wooden table is scenery in the Cabin. It is a supporter. The description of the wooden table is "A normal wooden table. It is covered with burn marks from all your failed attempts to perform magic."

The house is scenery in the Cabin. The description is "A small wooden cabin. You have lived here all your life."
Understand "home" as house.

The spell book is a thing. It is a container. It is on the table. The description of the spell book is "A leather book giving off the aura of magic. This is where you store your spells."
Rule for printing room description details of a container: stop.

The bed is scenery in the Cabin. It is a enterable supporter. The description of the bed is "A single size bed worn from generations of use. It is not the most comfortable, but it works."

Instead of going north in Cabin:
	if player is not carrying spell book:
		say "Wait, you can't forget your spell book.";
	otherwise:
		move player to forest.
		
Instead of dropping spell book:
	say "Don't do that! You need this."

Instead of putting spell book on table:
	say "Don't do that! you need this."	

	
[Code for Forest and scenery]
The Forest is a room. It is north of Cabin. "Tall trees separate your cabin from the city. You can see a grove of fruit trees. A wooden bridge leads to the Town Square in the North. The Forest Clearing is to the East, and your Cabin is to the South."

The fruit trees is scenery in the forest. It is a container. The description of the trees is "The apple trees are blooming in the summer sun."
Understand "fruit tree" or "tree" or "trees" as fruit trees.	

The Bridge is scenery in the Forest. The description is "A rickety old bridge connecting the forest with the town. It appears to be broken."


[Code for Forest Clearing]
The Forest Clearing is a room. It is east of the Forest. "An opening reveals a large stream running parallel to the woods.  A Hermit is sitting on a stone bench next to the stream. The Forest is to the West."

The stream is scenery in the Forest Clearing. The description of the stream is "A large stream. It's definetly too long to swim across. You remember swimming here as a child."

The woods is scenery in the Forest Clearing. The description of the woods is "A collection of trees stretching for miles. You can see the path you were just on."

The city is scenery in the Forest Clearing. The description of the city is "You can see parts of the city from here. It looks very busy today."

The bench is a thing. It is in the Forest Clearing. It is an enterable supporter. The description of the bench is "A bench carved out of a grey stone. It looks relatively new, and you do not remember when it was moved here."

[Code for Town Square]
The Town Square is a room. It is north of the Forest. "A large square, near the entrance to the stadium. You can see the stadium's glass doors and an information board. The Forest is to the South, the Mage District is to the East, and the Memorial is to the West."

The information board is scenery in the Town Square. the description is "A giant board advertising the Wizard Competition. There are posters are listed describing the days events".

The stadium is scenery in the Town Square. The description of the stadium is "A large Coliseum reaches up to the sky. Made out of stone, it has been here since the dawn of time."

The glass door is a door. It is north of the Town Square and south of the Coliseum. It is locked and lockable. The description of the glass door is "The translucent glass is the only thing seperating you from the stadium."

The posters is scenery. It is in the Town square. The description is "Fireworks show starts at 8:00pm. Fireworks-[italic type]Ignus Illuminas [roman type] is written on the bottom."
Understand "poster" as posters

After examining posters:
	Say "Fireworks - [italic type] Ignus Illuminas[roman type].";
	Say "Suddenly a beacon of light surrounds you. You sort of feel … smarter.";
	Say "Ignus Illuminas was added to the spell book.";
	Move ignus illuminas to spell book;

The key hole is scenery. It is in the Town Square. The description is "A keyhole."

The Official is a man. He is in the Town Square. The description is "A young man dressed in a colorful robe. He looks like he is in charge of the competition."

Instead of talking to official:
	If the player is carrying the silly box:
		If the player is not carrying the festive box:
			Say "Nice job! Your next challenge is to get the box in the Mage District.";
		If the player is carrying the festive box:
			Say "Brilliant work! Now you have the key to the glass door. But the keyhole appears to be frozen shut.";
	Otherwise:
		Say "Hello, welcome to the Inferna wizard competition. Your first challenge is in the Bazaar. It is located to the west of the Memorial. Talk to the large man for more information."
		
[Instead of asking Official about "help":
	Say "Are you sure you want my help?";
		If player consents:
			Say "What do you need help with?
				
			Ask Official about getting box in Bazaar.
			Ask Official about getting box in Mage District.
			Ask Official about thawing keyhole.";]
	
help is a thing.

[Code for the Mage District]
The Mage District is a room. It is east of the Town Square. "The city's oldest district and the heart of its magic. Ancient buildings extend in all directions. In the center of the road is a giant statue of the town's founder. The Town Square is to the West."

Statue is a supporter. It is in the Mage District. The description is " A giant statue of the town's founder, Dee Inferna. The statue stands twenty feet tall. There appears to be a small box on top of the statue."

The festive box is a container. It is closed and openable.  It is on the statue. The description is "A small box with the wizard festival logo on the cover. There appears to be something inside."

The buildings is scenery in the Mage District. The description of the buildings is "Ancient stone buildings extend as far as the eye can see. The architecture is strange, you can tell these buildings were made by wizards."

[Code for Memorial]
The Memorial is a room. It is west of the Town Square. "This area was built in dedication to the town's founder Dee Ignus. There are several murals describing Dee Ignus's many accomplishments. There is a big mural and a colorful mural. The Town Square is in the East and the Bazaar is to the West."

The big mural is scenery. It is in the Memorial. The description is "The picture shows a tall man controlling the wind. The caption says [italic type] Dee Ignus was a powerful man. By simply saying ventus he could control the winds. [roman type]"

The colorful mural is scenery. It is in the Memorial. The description is "A picture shows a man confronting a large army. The caption says [italic type] Dee Ignus was a clever wizard. He often used colorful spells to distract his enemies. [roman type]"



[Code for the Bazaar]
The Bazaar is a room. It is west of the Memorial. "The city's main marketplace. Various shops line the road, each selling different goods. There is a tent titled 'Wizard Festival Challenge'. Under the tent appears to be a large man guarding a box. The Town Square is to the East."

The tent is scenery in the Bazaar. The description is "A colorful orange and red tent. There is a banner advertising the Wizard Festival."


The shops is scenery in the Bazaar. The description of the shops is "Shops selling anything and everything wizard related. If you're looking for something special these shops would have it."

The large man is a man. He is in the Bazaar. The description is "A huge man wearing the Wizard Festival uniform."



[Code for Coliseum]
The Coliseum is a room. "A large area, encompassed by thousands of stands. There are many other wizards in the room. You can see a tall podium in the center of the room. [if not visited]

Congratulations wizards! You have made it to the final round of the competition. Your final challange is to be the first person to get onto the podium. Your challenge begins NOW!" 

The stands is scenery in the Coliseum. The description of the stands is "Thousands of seats form a large oval. Today they all appear to be occupied with fans."

The wizards are scenery in the Coliseum. The description of the wizards is "Men and women of all ages all trained in the art of magic."

The tall podium is scenery in the Coliseum. It is a enterable supporter. The description is "A golden podium rises ten feet in the air. Many wizards are attempting to reach the top."

[Code for Puzzle 1]
Casting pontem reficere is an action applying to nothing.
Understand "pontem reficere" or "say pontem reficere" or "cast pontem reficere" as casting pontem reficere.

The Hermit is a man. He is on the bench. The description of the Hermit is "An old man wearing tattered clothes. He has a long grey beard and a faded robe."

Instead of casting pontem reficere:
	If the player is in the Forest:
		Say "You see a bright flash. When your eyes return to normal you see a brand new bridge.";
		Now the description of the bridge is "A wooden bridge displaying the highest degree of architectural ingenuity.";
		Now the zxc of the bridge is 2;
	If the player is not in the Forest:
		Say "There is no target for this spell here.";
		
The bridge has a number called zxc.
The bridge has a number called present zxc.
The zxc of the bridge is usually 1.

The apple is thing. It is in the Coliseum. The description is "A shiny Fuji apple."

Instead of examining fruit trees for the first time:
	move the apple to the fruit trees;
	say "The apple trees are blooming in the summer sun. You find an apple."

Instead of eating apple:
	Say "You're not hungry right now."
	
	[Taken from Inform 7 Handbook]
Talking to is an action applying to one visible thing. 
Understand "talk to [someone]" or “converse with [someone]” as talking to.
	[Hermit dialog]
Instead of talking to Hermit:
	If apple is on-stage:
		Say "So hungry…";	
	If apple is off-stage:
		Say "Thank you. I was once a wizard you know. I would be happy to answer any of your questions. [line break] You could try asking the Hermit about the Hermit, magic, the city, or the forest.";
		
Instead of giving the apple to the Hermit:
	Say "He gratefully accepts the apple.";
	Remove the apple from play;
	Say "You see a flash of light. The Hermit's clothes transform into elegant wizard's robes.";
	Now the description of the Hermit is "An old man wearing elegant robes. The man appears to be giving off a strong magical aura.";

Instead of asking Hermit about "magic":
	Say "The most powerful type of magic is words. Each word has its own special meaning. By stringing together different word you can create different effects. [line break]You could try asking the Hermit about magic words or spells."
	
Instead of asking Hermit about "hermit":
	Say "I was once a powerful wizard, but a donkey's kick to the head left me with very little memory of spells and magic words. [line break] You could try asking the Hermit about spells or magic.";

Spells is a thing.

Question is a thing.

Magic words is a thing.

Instead of asking Hermit about "magic words":
	Say "Magic words are the essence of things. By stating an objects' magic word you gain control of it. [line break] You could try asking the Hermit about spells.";
	
Secret names is thing.
understand "secret name" as secret names.

Instead of asking Hermit about "spells":
	Say "Spells are one of the most important parts of a wizard's arsenal. A wizard must know when to use each of their spells. [line break] You could try asking the Hermit about the bridge.";
	
Instead of asking Hermit about "forest":
	Say "This forest was once the heart of all magic. Many years ago the world's first wizards gathered in this very spot and crafted the first magic words. [line break]You could try asking the Hermit about the city.";
	
Instead of asking Hermit about "city":
	Say "This city is the capital of Inferna. This was the first city to be built by the powerful wizard Dee Inferna. [line break] You could try asking the Hermit about Dee Inferna.";

Dee Inferna is a person.

Instead of asking Hermit about "Dee Inferna":
	Say "Dee Inferna was one of the world's most powerful wizards. He saved the world from a countless number of evil threats. Today's wizard ceremony is dedicated to his memory. [line break] You could try asking the Hermit about the Wizard Ceremony.";
	
Wizard Ceremony is a thing.

Instead of asking Hermit about "Wizard Ceremony":
	Say "The Wizard Ceremony is an event that has been going on for centuries. I vaguely recall participating when I was a kid. [line break] You could try asking the Hermit about the bridge."


Instead of telling Hermit about "bridge":
	Say "Hmm, the bridge is broken. Try using the spell pontem reficere.";
	Say "Suddenly a beacon of light surrounds you. You sort of feel … smarter.";
	Say "Pontem reficere was added to the spell book";
	Move pontem reficere to spell book;
	
Instead of asking Hermit about "bridge":
	Say "Hmm, the bridge is broken. Try using the spell pontem reficere.";
	Say "Suddenly, a beacon of light surrounds you. You sort of feel … smarter.";
	Move pontem reficere to spell book;

Instead of going north in the forest:
	If the zxc of the bridge is 2:
		move player to town square;
	If the zxc of the bridge is 1:
		say "The bridge appears to be broken. It is too dangerous to proceed with the bridge broken."
[Code for Puzzle 2]
The large man has a number called xyz.
The large man has a number called present xyz.
The large man can be focused or blinded.

The xyz of the large man is usually 1.
Definition: a person is blinded if his present xyz is 2.
Definition: a person is focused if his present xyz is 1.


Every turn:
	If the xyz of the large man has been 2 for one turn:
		now the xyz of large man is 1

Instead of talking to large man:
	If the player is carrying the silly box:
		Say "Well done wizard, return to the Offical for your next challenge.";
	Otherwise:
		Say "Welcome wizard, your goal is to take the box from behind me.";

Instead of taking silly box:
	If xyz of large man is 1:
		Say "You reach your hand out, but the man swats it away.";
	If player is not carrying the silly box:
		If xyz of large man is 2:
			Say "You quickly take the box while the man is distracted.";
			Move silly box to player;

	

The silly box is a thing. It is in the Bazaar. It is a container. It is closed and openable. The description is " A square box covered with silly pictures of mythical creatures."

The paper is a thing. It is in the silly box. The description is "A torn piece of paper. All it says is [italic type] Magnus[roman type]."

Casting Ignus Illuminas is an action applying to nothing. Understand "ignus illuminas" or "say ignus illuminas" or "cast ignus illuminas" as casting ignus illuminas.

Instead of casting Ignus Illuminas:
	Say "Bright red fireworks fill the sky. Distracted, everyone looks up at the colorful lights.";
	If the player is in the Bazaar:
		Now the xyz of large man is 2;
	If the player is in the Coliseum:
		Now the qwe of the wizards is 3;
		
Instead of taking festive box:
	Say "It is too high up for you to reach."


[Puzzle 3]
Casting ventus is an action applying to nothing. Understand "ventus" or "say ventus" or "cast ventus" as casting ventus.

Instead of casting ventus:
	If the player is not carrying the festive box:
		If the player is in the Mage District:
			Say "A light breeze passes through the area. The box moves slightly.";
	If the player is carrying the festive box: 
		Say "A light breeze passes through the area";
	If the player is not carrying the festive box:
		If the player is not in the Mage District:
			Say "A light breeze passes through the area.";	

Casting magnus is an action applying to nothing. Understand "magnus" or "say magnus" or "cast magnus" as casting magnus.

Instead of casting magnus:
	Say "Your body feels weird. Strangely stronger.";
	
Casting magnus ventus is an action applying to nothing. Understand "magnus ventus" or "say magnus ventus" or "cast magnus ventus" as casting magnus ventus.

Instead of casting magnus ventus for the first time:
	If the player is carrying the festive box:
		Say "A heavy wind flows through the area.
		
		";
		Say "A beacon of light surrounds you. You sort of feel … smarter.";
		Say "Magnus ventus was added to the spell book.";
		Move magnus ventus to spell book;
	If the player is not carrying the festive box:
		If the player is in the Mage District:
			Say "A heavy wind flows through the area. The box falls into your hands.";
			Move festive box to player;
			Say "
			
			A beacon of light surrounds you. You feel sort of feel … smarter.";
			Say "Magnus ventus was added to the spell book.";
			Move magnus ventus to spell book;
		If the player is not in the Mage District:
			Say " A heavy wind flows through the area.";
			Say "
			
			A beacon of light surrounds you. You feel sort of feel … smarter.";
			Say "Magnus ventus was added to the spell book.";
			Move magnus ventus to spell book.

Instead of casting magnus ventus:
	If the player is carrying the festive box:
		Say "A heavy wind flows through the area.";
	If the player is not carrying the festive box:
		If the player is in the Mage District:
			Say "A heavy wind flows through the area. The box falls into your hands.";
			Move festive box to player;
		If the player is not in the Mage District:
			Say " A heavy wind flows through the area.";
		

[Puzzle 4]
The glass key is a thing. It unlocks the glass door. It is in the festive box. The description is "A translucent key made of glass."

The glass door has a number called abc.
The glass door has a number called present abc.
The glass door can be frozen or regular.

The abc of the glass door is usually 1.
Definition: a door is frozen if its present abc is 1.
Definition: a door is regular if its present abc is 2.

Instead of unlocking glass door with key:
	If abc of glass door is 1:
		Say "You can't unlock this. The keyhole is frozen shut.";
	If abc of glass door is 2:
		Say "Yes! You unlock the door with the key";
		Now the glass door is unlocked;
		
Casting magnus ignus is an action applying to nothing. Understand "magnus ignus" or "say magnus ignus" or "cast magnus ignus" as casting magnus ignus.

Instead of casting magnus ignus:
	If the player is in the Town Square:
		Say "A powerful wave of heat flows through the area. The keyhole melts open.";
		Now the abc of the glass door is 2;
	If the player is not in the Town Square:
		Say "A powerful wave of heat flows through the area.";

Instead of casting magnus ignus for the first time:
	If the player is in the Town Square:
		Say "A powerful wave of heat flows through the area.";
		Say "A beacon of light surrounds you. You sort of feel … smarter.";
		Say "Magnus ignus was added to the spell book.";
		Move magnus ignus to spell book;
	If the player is not in the Town Square:
		If the player is in the Mage District:
			Say "A powerful wave of heat flows through the area.";
			Say "
			
			A beacon of light surrounds you. You feel sort of feel … smarter.";
			Say "Magnus ignus was added to the spell book.";
			Move magnus ignus to spell book;
		
[Last Puzzle: Get onto Podium]
	[Code for preventing player from getting on podium]
The podium has a number called asd.
The podium has a number called present asd.
The podium can be wet, hot, cold, or shocky.

The asd of the podium is usually 1.
Definition: a podium is wet if its present asd is 1.
Definition: a podium is hot if its present asd is 2.
Definition: a podium is cold if its present asd is 3.
Definition: a podium is shocky if its present asd is 4.

Instead of entering the Podium:
	If the qwe of the wizards is 1:
		If asd of podium is 1:
			Say "You try to climb onto the podium, but a blast of water knocks you down.";
		If asd of podium is 2:
			Say "You try to climb onto the podium, but a fireball knocks you down. [line break] If there was only some way to distract your competitors.";
		If asd of podium is 3:
			Say "You try to climb onto the podium, but a ball of ice knocks you down.";
		If asd of podium is 4:
			Say "You try to climb onto podium, but a bolt of lightning knocks you down.[line break] If there was only some way to distract your competitors.";
	If the qwe of the wizards is 2:
		If the ggg of the player is 2:
			If the lkj of the player is 2:
				Say "You lean forward and fly onto the podium.";
				Move player to podium;
	If the qwe of the wizards is 2:
		If the ggg of the player is 2:
			If the lkj of the player is 1:
				Say "You can't reach it yet, if only you were a could get higher.";
	If the qwe of the wizards is 2:
		If the ggg of the player is 1:
			Say "You try to climb up the podium, but you fall down. If only you were a little lighter."; 

Every turn:
	If asd of podium has been 1 for one turn:
		Now the asd of podium is 2;
		
Every turn:
	If asd of podium has been 2 for one turn:
		Now the asd of podium is 3;

Every turn:
	If asd of podium has been 3 for one turn:
		Now the asd of podium is 4;
		
Every turn:
	If asd of podium has been 4 for one turn:
		Now the asd of podium is 1;

	[Code for blinding wizards]
Casting Magnus Illuminas is an action applying to nothing. Understand "magnus illuminas" or "say magnus illuminas" or "cast magnus illuminas" as casting magnus illuminas.

Instead of casting magnus illuminas:
	Say "A blinding light fills the room.";
	Now the qwe of the wizards is 2;
	If the player is not carrying magnus illuminas:
		Move magnus illuminas to player;
		Say "A beacon of light surrounds you. You sort of feel … smarter.";
		
The wizards have a number called qwe.
The wizards have a number called present qwe.
The wizards can be normal, blinded, or sortof.

The qwe of the wizards is usually 1.
Definition: a wizards is normal if its present qwe is 1.
Definition: a wizards is blinded if its present qwe is 2.
Definition: a wizards is sortof if its present qwe is 3.

Every turn:
	If the qwe of wizards has been 2 for three turns:
		Now the qwe of the wizards is 1;
			
Every turn:
	If the qwe of the wizards has been 3 for one turn:
		Now the qwe of the wizards is 1;
		
	[Code for becoming light]
Casting ventus illuminas is an action applying to nothing.
	Understand "ventus illuminas" or "say ventus illuminas" or "cast ventus illuminas" as casting ventus illuminas.
	
Instead of casting ventus illuminas for the first time:
	Say "A light wind swirls around your feet. You feel lighter.";
	Say "A beacon of light surrounds you. You sort of feel … smarter. You add the spell to your spell book.";
	Move ventus illuminas to spell book;
	Now the ggg of the player is 2;

Instead of casting ventus illuminas:
	Say "A light wind swirls around your feet. You feel lighter.";
	Now the ggg of the player is 2;
	
The player has a number called ggg.
The player has a number called present ggg.
The ggg of the player is usually 1.

Every turn:
	if the ggg of the player has been 2 for two turns:
		Now the ggg of the player is 1;
		
	[Code for getting higher in air]
Casting ignus ventus is an action applying to nothing.
	Understand "ignus ventus" or "say ignus ventus" or "cast ignus ventus" as casting ignus ventus.
	
Instead of casting ignus ventus for the first time:
	Say "Warm air circles around your feet. You rise many feet in the air.";
	Say "A beacon of light surrounds you. You sort of feel … smarter. You add the spell to your spell book.";
	Move ignus ventus to the spell book;
	Now the lkj of the player is 2;

Instead of casting ignus ventus:
	Say "Warm air circles around your feet. You rise many feet in the air.";
	Now the lkj of the player is 2;

The player have a number called lkj.
The player have a number called present lkj.
The lkj of the player is usually 1.


Every turn:
	If the lkj of the player has been 2 for one turn:
		Now the lkj of the player is 1;
		Say "You return to the ground.";

An every turn rule:
	if the player is on the podium,
	end the game in victory.
	

[Spells]

Pontem reficere is a thing. The description is "[italic type]pontem reficere[roman type]: fix bridge"

Instead of taking pontem reficere:
	say "Don't remove this from your spell book"
	
Ignus Illuminas is a thing. The description is "[italic type]Ignus Illuminas[roman type]: Fireworks"

Instead of taking Ignus Illuminas:
	say "Don't remove this from your spell book."

Magnus Ignus is a thing. The description is "[italic type]Magnus ignus[roman type]: Powerful Fire"

Instead of taking Magnus Ignus:
	say "Don't remove this from your spell book"

Magnus Illuminas is a thing. The description is "[italic type] Magnus illuminas[roman type]: Bright Light"

Instead of taking Magnus Illuminas:
	Say "Don't remove this from your spell book."
	
Ignus Ventus is a thing. The description is "[italic type] Ignus Ventus[roman type]: Warm Air"

Magnus Ventus is a thing. The description is "[italic type] Magnus Ventus [roman type]: Heavy wind."

Instead of taking magnus ventus:
	Say "Don't remove this from your spell book."
	
Ventus Illuminas is a thing. The description is "[italic type] Ventus Illuminas [Roman type]: Weightless wind."

Instead of taking Ventus Illuminas:
	Say "Don't remove this from your spell book."

[Hints]
Table of Bridge Hints
hint	used
"How might you get a spell to fix the bridge?"	a number
"Is there someone you could ask?"
"If the Hermit is hungry try find some food to give him."
"Did you try asking the Hermit about the bridge?"

Table of Silly Box Hints
hint	used
"Could you distract the large man?"	a number
"Maybe a spell could help you distract him."
"Try examining things to find the right spell."
"Did you try checking the information board?"

Table of Festive Box Hints
hint	used
"How could you knock the box down?"	a number
"Maybe a wind spell could help you knock the box down."
"Did you try ventus?"
"How did you feel after casting magnus?"
"Maybe adding another word with ventus could make it stronger."

Table of Door Hints
hint	used
"Could you use a spell to melt the ice?"	 a number
"Maybe a powerful fire spell could met it?"
"Try combining magic words to make a new spell."
"What would be the equivalent of strong fire?"

Table of Podium Hints
hint	used
"Try combining magic words to make all possible spells"	a number
"If only you could distract the competition."
"If the fireworks don't distract them maybe a bright light would."
"Try using magnus illuminas."
"The podium is too tall. Maybe if you were lighter you would have an easier time climbing up."
"A boost of light air could help you up."
"Try using ventus illuminas."
"Now that you're lighter, if only you could fly up to the podium."
"Warm air rises, right?"
"Try using ignus ventus."
"Try distracting the competition, becoming lighter, then flying."


Table of Potential Hints (continued)
title	subtable
"How do I fix the bridge?"	Table of Bridge Hints
"How do I get the silly box?"	Table of Silly Box Hints
"How do I get the festive box?"	Table of Festive Box Hints
"How do I unlock the glass door?"	Table of Door Hints
"How do I get on the podium?"	Table of Podium Hints

Table of Active HInts (continued)
title	subtable	description	toggle
text	table-name	text	a rule
with 10 blank rows
	
[activate the Table of Bridge Hints.
deactivate the Table of Bridge Hints.

activate the table of silly box hints.
deactivate the table of silly box hints.

activate the table of festive box hints.
deactivate the tablee of festive box hints.

activate the table of door hints.
deactivate the table of door hints.

activate the table of podium hints.
deactivate the table of podium hints.]

To reinstate (hint table - a table-name) with (hint title - text):
choose a blank row in the Table of Potential Hints;
now the title entry is hint title;
now the subtable entry is hint table.

When play begins: activate the Table of Bridge Hints.

A hint activation rule:
     if the Town Square is visited, activate the Table of Silly Box Hints.
A hint deactivation rule:
     if the Town Square is visited, deactivate the Table of Bridge Hints.

A hint activation rule:
     if the player is carrying the silly box, activate the Table of Festive Box Hints.
A hint deactivation rule:
     if the player is carrying the silly box, deactivate the Table of Silly Box Hints.

A hint activation rule:
     if the player is carrying the festive box, activate the Table of Door Hints.
A hint deactivation rule:
     if the player is carrying the festive box, deactivate the Table of festive box Hints.

A hint activation rule:
     if the Coliseum is visited, activate the Table of podium Hints.
A hint deactivation rule:
     if the Coliseum is visited, deactivate the Table of door Hints.

Understand "help" as asking for hints.
