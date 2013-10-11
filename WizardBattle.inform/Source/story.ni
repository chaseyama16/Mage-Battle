"WizardBattle" by Cameron Haseyama

[BUGS:
•"take all]

When play begins: say "It's a beautiful day in the land of Inferna. You slowly get out of bed and read a note. It says,

 Dear Atlas, 

Happy birthday! We know you're excited to go compete in wizard festival so we'll make this short. Use your superb wit and newfound magic to win this year. Have fun and be safe.

From, Mom and Dad.

You find yourself at Home."

The description of the player is "On the outside you appear to be an average boy. On the inside magic coarses through your veins."

[Code for Home and scenery]
The Home is a room. "A cozy house in the woods and your home since birth. A wooden table is in the center of your room and your bed is in the corner. The Forest is to the North."

The wooden table is scenery in the Home. It is a supporter. The description of the wooden table is "A normal wooden table. It is covered with burn marks from all your failed attempts to perform magic."


The spell book is a thing. It is a container. It is on the table. The description of the spell book is "A leather book giving off the aura of magic. This is where you store your spells."
Rule for printing room description details of a container: stop.

The bed is scenery in the Home. It is a enterable supporter. The description of the bed is "A single size bed worn from generations of use. It is not the most comfortable, but it works."

Instead of going north in Home:
	if player is not carrying spell book:
		say "Wait, you can't forget your spell book.";
	otherwise:
		move player to forest.
		
Instead of dropping spell book:
	say "Don't do that! You need this."

Instead of putting spell book on table:
	say "Don't do that! you need this."	

	
[Code for Forest and scenery]
The Forest is a room. It is north of Home. "A tranquil forest separating your home from the city. You can see many fruit trees. A wooden bridge leads to the Town Square in the North. The Forest Clearing is to the East, and your Home is to the South."

The fruit trees is a container. It is in the Forest. The description of the trees is "Trees blossom in the forest. You can see an apple here."
	
The Bridge is scenery in the Forest. The description is "A rickety old bridge connecting the forest with the town. It appears to be broken."


[Code for Forest Clearing]
The Forest Clearing is a room. It is east of the Forest. "An opening reveals a large stream running parallel to the woods.  A Hermit is sitting on a stone bench next to the stream. The Forest is to the East."

The stream is scenery in the Forest Clearing. The description of the stream is "A large stream. It's definetly too long to swim across. You remember swimming here as a child."

The woods is scenery in the Forest Clearing. The description of the woods is "A collection of trees stretching for miles. You can see the path you were just on."

The city is scenery in the Forest Clearing. The description of the city is "You can see parts of the city from here. It looks very busy today."

The bench is a thing. It is in the Forest Clearing. It is an enterable supporter. The description of the bench is "A bench carved out of a grey stone. It looks relatively new, and you do not remember when it was moved here."

[Code for Town Square]
The Town Square is a room. It is north of the Forest. "A large square, near the entrance to the stadium. Informational posters surround the stadium's glass doors. The Forest is to the South, the Mage District is to the East, and the Memorial is to the West."

The stadium is scenery in the Town Square. The description of the stadium is "A large Coliseum reaches up to the sky. Made out of stone, it has been here since the dawn of time."

The glass door is a door. It is north of the Town Square and south of the Coliseum. It is locked and lockable. The description of the glass door is "The translucent glass is the only thing seperating you from the stadium."

The posters is scenery. It is in the Town square. The description is "Beautiful fireworks cover the posters. Fireworks-[italic type]Ignus Illuminas [roman type] is written on the bottom."

The key hole is scenery. It is in the Town Square. The description is "A keyhole."

The Official is a man. He is in the Town Square. The description is "An young man dressed in a colorful robe. He looks like he is incharge of the competition."

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

The big mural is scenery. It is in the Memorial. The description is "The picture shows a tall man controling the wind. The caption says [italic type] Dee Ignus was a powerful man. By simply saying ventus he could control the winds. [roman type]"

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

The tall podium is scenery in the Coliseum. It is a enterable supporter. The description is "A golden stand."

[Code for Puzzle 1]
Casting pontem reficere is an action applying to nothing.
Understand "pontem reficere" or "say pontem reficere" or "cast pontem reficere" as casting pontem reficere.

The Hermit is a man. He is on the bench. The description of the Hermit is "An old man wearing tattered clothes. He has a long grey beard and a faded robe."

Instead of casting pontem reficere:
	If the player is in the Forest:
		Say "You see a bright flash. When your eyes return to normal you see a brand new bridge.";
		Now the description of the bridge is "A wooden bridge displaying a the highest level of architectural ingenuity.";
		Move pontem reficere to spell book;
	If the player is not in the Forest:
		Say "There is no target for this spell here.";


The apple is thing. It is in the Coliseum. The description is "A shiny Fuji apple."

Instead of examining fruit trees for the first time:
	move the apple to the fruit trees;
	say "You find an apple."

Instead of eating apple:
	Say "Your not hungry right now."
	
	[Taken from Inform 7 Handbook]
Talking to is an action applying to one visible thing. 
Understand "talk to [someone]" or “converse with [someone]” as talking to.

Instead of talking to Hermit:
	If apple is on-stage:
		Say "So hungry…";	
	If apple is off-stage:
		Say "Thank you. I was once a wizard you know. I would be happy to answer any of your questions.";
		
Instead of giving the apple to the Hermit:
	Say "He gratefully accepts the apple.";
	Remove the apple from play;
	
Instead of asking Hermit about "magic":
	Say "The most powerful type of magic is words. Each word has its own special meaning. By stringing together different word you can create different effects."
	
Instead of telling Hermit about "bridge":
	Say "Hmm, the bridge is broken. Try using the spell pontem reficere."
	
Instead of asking Hermit about "bridge":
	Say "Hmm, the bridge is broken. Try using the spell pontem reficere."

Instead of going north in the forest:
	If pontem reficere is in the spell book:
		move player to town square;
	If pontem reficere is not in the spell book:
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
	Say "Welcome wizard, your goal is to take the box from behind me."

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
	If ignus illuminas is not in the spell book:
		Say "Cool a new spell. You added it to your spell book.";
		Move ignus illuminas to spell book;
	If the player is in the Bazaar:
		Now the xyz of large man is 2;
		
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

Instead of casting magnus ventus:
	If the player is carrying the festive box:
		Say "A heavy wind flows through the area.";
	If the player is not carrying the festive box:
		If the player is in the Mage District:
			Say "A heavy wind flows through the area. The box falls into your hands.";
			Move festive box to player;
		If the player is not in the Mage District:
			Say " A heavy wind flows through the area.";
	If the player is not carrying magnus ventus:
		Move magnus ventus to spell book;
	
		
Magnus ventus is a thing. The description is "[italic type]magnus ventus[roman type]: heavy wind".

Instead of taking magnus ventus:
	say "Dont' remove this from your spell book"
	

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
	If magnus ignus is not in the spell book:
		Move magnus ignus to spell book;
		Say "Yes! A new spell";
		

[Last Puzzle: Get onto Podium]

Instead of entering the Podium:
	Say "You try to climb onto the podium, but a blast of water knocks you down.";

An every turn rule:
	if the player is on the podium,
	end the game in victory.
	

[Spells]

Pontem reficere is a thing. The description is "[italic type]pontem reficere[roman type]: fix bridge"

Instead of taking pontem reficere:
	say "Don't remove this from your spell book"
	
Pratum inferno is a thing. The description is "[italic type]pratum inferno[roman type]: meadow of flame".

Instead of taking pratum inferno:
	say "Don't remove this from your spell book"
	
Ignus Illuminas is a thing. The description is "[italic type]Ignus Illuminas[roman type]: Fireworks"

Instead of taking Ignus Illuminas:
	say "Don't remove this from your spell book"

Magnus Ignus is a thing. The description is "[italic type]Magnus ignus[roman type]: Powerful Fire"

Instead of taking Magnus Ignus:
	say "Don't remove this from your spell book"




[Aqua ignus is a thing. The description is "[italic type]aqua ignus[roman type]: scalding water"

Instead of taking aqua ignus:
	say "Don't remove this from your spell book"
	
Terra inferna is a thing. The description is "[italic type]terra inferna[roman type]: molten rock"

Instead of taking terra inferna:
	say "Don't remove this from your spell book"
	
Umbra excan is a thing. The description is "[italic type]umbra excan[roman type]: shadow flare"

Instead of taking umbra excan:
	say "Don't remove this from your spell book"

Sanctus ignus is a thing. The description is "[italic type]sanctus ignus[roman type]: holy fire"

Instead of taking sanctus ignus:
	say "Don't remove this from your spell book"
	
Solum tempesto is a thing. The description is "[italic type]solum tempesto[roman type]: mud storm"

Instead of taking solum tempesto:
	say "Don't remove this from your spell book"

ros sanitatis is a thing. The description is "[italic type]ros sanitatis[roman type]: healing dew"

Instead of taking ros sanitatis:
	say "Don't remove this from your spell book"
	
Venenum aqua is a thing. The description is "[italic type]venenum aqua[roman type]: poison water"

Instead of taking Venenum aqua:
	say "Don't remove this from your spell book"

Sanctus caligo is a thing. The description is "[italic type]sanctus caligo[roman type]: holy mist"

Instead of taking sanctus caligo:
	say "Don't remove this from your spell book"
	
Perniciosum incrementum is a thing. The description is "[italic type]perniciosum incrementum[roman type]: destructive growth"

Instead of taking perniciosum incrementum:
	say "Don't remove this from your spell book"
	
Umbra hiatum is a thing. The description is "[italic type]umbra hiatum[roman type]: shadow chasm"

Instead of taking Umbra hiatum:
	say "Don't remove this from your spell book"

Divinum terrae is a thing. The description is "[italic type]divinum terrae[roman type]: divine earth"

Instead of taking Divinum terrae:
	say "Don't remove this from your spell book"

Venenum herba is a thing. The description is "[italic type]venenum herba[roman type]: poison herb"

Instead of taking Venenum herba:
	say "Don't remove this from your spell book"

Sanitatum collyrio is a thing. The description is "[italic type]sanitatum collyrio[roman type]: healing salve"

Instead of taking sanitatum collyrio:
	say "Don't remove this from your spell book"
	
Mysticum Illuminas is a thing. The description is "[italic type]mysticum illuminas [roman type]: blinding ray"

Instead of taking Mysticum Illuminas :
	say "Don't remove this from your spell book"

Ventum urentem is a thing. The description is "[italic type]ventum urentem[roman type]: burning wind"

Instead of taking Ventum urentem:
	say "Don't remove this from your spell book"

Procellaeque is a thing. The description is "[italic type]procellaeque[roman type]: hurricane"

Instead of taking procellaeque:
	say "Don't remove this from your spell book"
	
Nubes pulvis is a thing. The description is "[italic type]nubes pulvis[roman type]: dust storm"

Instead of taking nubes pulvis:
	say "Don't remove this from your spell book"
	
Folium procellarum is a thing. The description is "[italic type]folium procellarum[roman type]: "

Instead of taking folium procellarum :
	say "Don't remove this from your spell book"
	
Umbra procellarum is a thing. The description is "[italic type]umbra procellarum[roman type]: shadow storm"

Instead of taking umbra procellarum:
	say "Don't remove this from your spell book"

Spiritum sanctum is a thing. The description is "[italic type]spiritum sanctum[roman type]: holy wind"

Instead of taking spiritum sanctum:
	say "Don't remove this from your spell book"]
	



	


