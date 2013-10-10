"WizardBattle" by Cameron Haseyama

[BUGS:
•"take" command in forest takes apples even if you haven't seen it]

When play begins: say "It's a beautiful day in the land of Inferna. You jump out of bed, excitement flowing through your veins. Finally, its the day of the wizard festival where wizards compete in different challenges. Let's go!

You find yourself at Home."

The description of the player is "On the outside you appear to be an average boy. On the inside magic coarses through your veins."

[Code for Home and scenery]
The Home is a room. "A cozy house in the woods and your home since birth. A wooden table is in the center of your room and your bed is in the corner. The Forest is to the North."

The wooden table is scenery in the Home. It is a supporter. The description of the wooden table is "A normal wooden table. It is covered with burn marks from all your failed attempts to perform magic."

The note is a thing. It is on the table. The description of the note is "Dear Atlas, 

We know you're excited to go compete in wizard festival so we'll make this short. Don't forget your spell book. That's where you store your magic spells. Make sure you have it at all times. Also, the Town Square is to the North so don't get lost.

From, Mom and Dad."

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
	
Instead of putting spell book on desk:
	say "Don't do that! you need this."	
	
[Code for Forest and scenery]
The Forest is a room. It is north of Home. "A tranquil forest filled with trees and shrubs. Various rocks and bushes line the dirt road. A wooden bridge leads to the Town Square in the North. The Forest Clearing is to the East, and your Home is to the South."

The trees is scenery in the Forest. It is a container. The description of the trees is "A variety of trees, ranging in breeds. "
	
The Bridge is scenery in the Forest. The description is "A rickety old bridge connecting the forest with the town. It appears to be broken."

The shrubs is scenery in the Forest. The description of the shrubs is "Smaller plants then the trees growing in the shade."

The rock is scenery in the forest. The description of the rocks is "Small rocks all around the size of your fist."
Understand "rock" as rocks.

The bushes is scenery in the Forest. The description of the bushes is "Leafy plants growing along the side of the road. "

The road is scenery in the Forest. The description of the road is "An old dirt road. It is worn from years of use."

[Code for Forest Clearing]
The Forest Clearing is a room. It is east of the Forest. "An opening reveals a large stream running parallel to the woods.  A Hermit is sitting on a stone bench next to the stream. The Forest is to the East."

The stream is scenery in the Forest Clearing. The description of the stream is "A large stream. It's definetly too long to swim across. You remember swimming here as a child."

The woods is scenery in the Forest Clearing. The description of the woods is "A collection of trees stretching for miles. You can see the path you were just on."

The city is scenery in the Forest Clearing. The description of the city is "You can see parts of the city from here. It looks very busy today."

The bench is a thing. It is in the Forest Clearing. It is an enterable supporter. The description of the bench is "A bench carved out of a grey stone. It looks relatively new, and you do not remember when it was moved here."

[Code for Town Square]
The Town Square is a room. It is north of the Forest. "A large square, near the entrance to the stadium. It is filled with local wizards and fans. Large torches line the stadium's glass door. You can see various posters for the competition. The Forest is to the South, the Mage District is to the East, and the Bazzar is to the West."

The stadium is scenery in the Town Square. The description of the stadium is "A large Coliseum reaching up into the sky. Made out of stone it has been here since the dawn of time."

The torch is a thing in the Town Square. The description is "Thousands of torches brightly flicker in the daylight. You can counts thousands of them. The city probably wouldn't notice one missing."

Instead of taking torch:
	Say "You might get in trouble. Are you sure?";
	If player consents:
		Say "Taken";
		Move torch to player;
		Now the description of the torch is "A magical flame shines on this torch."

The glass door is a door. It is north of the Town Square and south of the Lobby. The description of the glass door is "The translucent glass is the only thing seperating you from the stadium."

The posters is scenery. It is in the Town square. The description is "Beautiful fireworks cover the posters, [italic type] Ignus Illuminas [roman type] is written on the bottom."

The Official is a man. He is in the Town Square. The description is "An young man dressed in a colorful robe. He looks like he is incharge of the competition."

Instead of talking to official:
	If the player is carrying the festival box:
		Say "Nice work! The other part of this challenge is in the Bazaar.";
	Otherwise:
		Say "Hello, welcome to the Inferna wizard competition. The first challenge is unlocking the glass door behind me. The keys to opening the door are in the Mage District and Bazaar."

[Code for the Mage District]
The Mage District is a room. It is east of the Town Square. "The city's oldest district and the heart of its magic. Ancient buildings extend in all directions. In the center of the road is a giant statue of the town's founder. The Town Square is to the West."

Statue is a supporter. It is in the Mage District. The description is " A giant statue of the town's founder, Dee Inferna. The statue stands twenty feet tall. There appears to be a small box on top of the statue."

The festival box is a container. It is locked and lockable. It is on the statue. The description is "A small box with the wizard festival logo on the cover. There appears to be something inside."

Instead of taking festival box:
	Say "It is too high up for you to reach."

The buildings is scenery in the Mage District. The description of the buildings is "Ancient stone buildings extend as far as the eye can see. The architecture is strange, you can tell these buildings were made by wizards."


[Code for the Bazaar]
The Bazaar is a room. It is west of the Town Square. "The city's main marketplace. Various shops line the road, each selling different goods. There is a large man standing in under a tent called 'Wizard Festival Challenge'. The Town Square is to the East."

The tent is scenery in the Bazaar. The description is "A colorful orange and red tent. There is a banner advertising the Wizard Festival."


The shops is scenery in the Bazaar. The description of the shops is "Shops selling anything and everything wizard related. If you're looking for something special these shops would have it."

The large man is a man. He is in the Bazaar. The description is "A huge man wearing the Wizard Festival uniform."

The large man has a number called xyz.
The large man has a number called present xyz.
The large man can be focused or blinded.

The xyz of the large man is usually 1.
Definition: a person is blinded if his present xyz is 2.
Definition: a person is focused if his present xyz is 1.

Instead of talking to large man:
	Say "Welcome wizard, your goal is to take the box from behind me."

Instead of taking silly box:
	If xyz of large man is 1:
		Say "You reach your hand out, but the man swats it away.";
	If player is not carrying the silly box:
		If xyz of large man is 2:
			Say "You quickly take the box while the man is distracted.";
			Move silly box to player;

	

The silly box is a thing. It is in the Bazaar.

Casting mysticum illuminas is an action applying to nothing. Understand "mysticum illuminas" or "say mysticum illuminas" or "cast mysticum illuminas" as casting mysticum illuminas.

Instead of casting Mysticum illuminas:
	Say "The area fills with a blinding light.";
	Now the xyz of large man is 2;
	

Casting Ignus Illuminas is an action applying to nothing. Understand "ignus illuminas" or "say ignus illuminas" or "cast ignus illuminas" as casting ignus illuminas.

Instead of casting Ignus Illuminas:
	Say "Bright red fireworks fill the sky.";
	If player is not carrying ignus illuminas:
		Say "Cool a new spell. You added it to your spell book.";
		Move ignus illuminas to spell book;
	
[Code for the Lobby]
The Lobby is a room. "The waiting room for the Coliseum. This is where wizards wait before their battles. There is a reception desk on one side of the room, and a couch in the other. The Coliseum is to the North and the Town Square is to the South."

The reception desk is scenery in the Lobby. It is a supporter. The description is "Here players can find information about upcoming events and tournaments. There is a sign that says, 'Open Coliseum, all competitors welcome. When you are ready head north to the Coliseum."

The couch is scenery in the Lobby. It is a enterable supporter. The description is "A leather couch made from the finest materials. It looks like the Coliseum tries to provide the best services for their patrons."

Instead of going north in the Lobby:
	Say "Are you sure? Once you enter the battle with start and you won't be able to come back.";
	If player consents:
		move player to Coliseum.	

[Code for Coliseum]
The Coliseum is a room. It is north of the Lobby. "An large arena encompassed by huge stands. The arena is empty except you and your opponent. "

The stands is scenery in the Coliseum. The description of the stands is "Thousands of seats are forming a large oval. Today they all appear to be occupied with fans."

Instead of going south in the Coliseum:
	Say "You're in a battle now. It's too late to go back."

[Code for Puzzle 1]
Casting pontem reficere is an action applying to nothing.
Understand "pontem reficere" or "say pontem reficere" or "cast pontem reficere" as casting pontem reficere.

The Hermit is a man. He is on the bench. The description of the Hermit is "An old man wearing tattered clothes. He has a long grey beard and a faded robe."

Instead of casting pontem reficere:
	If the player is in the Forest:
		Say "You see a bright flash. When you're eyes return to normal you see a brand new bridge.";
		Now the description of the bridge is "A wooden bridge displaying a the highest level of architectural ingenuity.";
		Move pontem reficere to spell book;
	If the player is not in the Forest:
		Say "There is no target for this spell here.";

Magic is a thing.
	[Taken from Inform 7 Handbook]
Talking to is an action applying to one visible thing. 
Understand "talk to [someone]" or “converse with [someone]” as talking to.

Instead of talking to Hermit:
	Say "I was once an wizard you know.
	
	
	Hmm, maybe he could teach you about magic.";
	
Instead of asking Hermit about "magic":
	Say "Magic is composed of two words. These words can be found all over the world. Different combinations of words can have different affects.
	
	
	Interesting, does he know about the bridge?"
	
Instead of telling Hermit about "bridge":
	Say "Hmm, the bridge is broken. Try using the spell pontem reficere."
	
Instead of asking Hermit about "bridge":
	Say "Hmm, the bridge is broken. Try using the spell pontem reficere."

Instead of going north in the forest:
	If pontem reficere is in the spell book:
		move player to town square;
	If pontem reficere is not in the spell book:
		say "It's too dangerous to go north with the bridge broken."

[Code for Puzzle 2] [Brianna Hartner's Tonic][
Combining it with is an action applying to two things.
Understand "combine [something] with [something]" as combining it with.

[The line below tells Inform7 that combining produces something.]
The combining it with action has an object called the XYZ.

Setting action variables for combining something with something: 
	let X be a list of objects;
	add the noun to X;
	add the second noun to X;
	sort X; 
	repeat through the Table of XYZ Parts: 
		let Y be the parts list entry; 
		sort Y; 
		if X is Y: 
			now the XYZ is the results entry.]

[If action is not stopped, continue to…]
[Carry out combining it with: 
	say "You wave your hands over the two items. There is a flash of light.";
	remove the noun from play;
	remove the second noun from play;
	move the XYZ to spell book.

Report combining it with:
	say "You now have a [a XYZ]."	

Table of XYZ Parts
Parts List	Results
{Torch, Water Bottle}	Aqua ignus
{Torch, Rock}	Terra inferna
{Torch, Branch}	Pratum inferno
{Torch, Darkstone}	Umbra excan
{Torch, Lightstone}	Sanctus ignus
{Water Bottle, Rock}	Solum tempesto
{Water Bottle, Branch}	Ros sanitatis
{Water Bottle, Darkstone}	Venenum aqua
{Water Bottle, Lightstone}	Sanctus caligo
{Rock, Branch}	Perniciosum incrementum
{Rock, Darkstone}	Umbra hiatum
{Rock, Lightstone}	Divinum terrae
{Branch, Darkstone}	Venenum herba
{Branch, Lightstone}	Sanitatum collyrio
{Darkstone, Lightstone}	Mysticum illuminas
{Windstone, Torch}	Ventum urentem
{Windstone, Water Bottle}	Procellaeque
{Windstone, Rock}	Nubes pulvis
{Windstone, Branch}	Folium procellarum 
{Windstone, Darkstone}	Umbra procellarum
{Windstone, Lightstone}	Spiritum sanctum]
	
Windstone is a thing. The description is "A gift from your parents. It is said to contain the essense of the wind."

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
	



	


