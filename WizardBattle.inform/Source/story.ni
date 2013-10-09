"WizardBattle" by Cameron Haseyama

[BUGS:
•"take" command in forest takes apples even if you haven't seen it]

When play begins: say "It's a beautiful day in the land of Inferna. You jump out of bed, excitement flowing through your veins. It’s finally your fifteenth birthday and you can now participate in wizard battles at the Coliseum. There's so much for you to learn about magic. Let's go!

You find yourself at Home."

The player is carrying the windstone.

[Code for Home and scenery]
The Home is a room. "A cozy house in the woods and your home since birth. A wooden table is in the center of your room and your bed is in the corner. There is a bookshelf on in the corner. There is a door in the north leading to the Forest."

The wooden table is scenery in the Home. It is a supporter. The description of the wooden table is "A normal wooden table. It is covered with burn marks from all your failed attempts to perform magic."

The note is a thing. It is on the table. The description of the note is "Happy Birthday Atlas, 

We know you're excited to go compete in wizard battles so we'll make this short. Don't forget your spell book. That's where you store your magic spells. Make sure you have it at all times. Also, the Coliseum is to the North so don't get lost.

From, Mom and Dad."

The spell book is a thing. It is a container. It is on the table. The description of the spell book is "A leather book giving off the aura of magic. This is where you store your spells."
Rule for printing room description details of a container: stop.

The bookshelf is scenery in the Home. The description of the bookshelf is "A wooden bookshelf made by your father. You open a random book and read '[italic type]Reficere *******[roman type] is a common spell used to ********.' Parts appear to be faded out."
Understand "shelf" or "shelves" as bookshelf.

The bed is scenery in the Home. It is a enterable supporter. The description of the bed is "A single size bed worn from generations of use. It is not the most comfortable, but it works."

Casting reficere is an action applying to nothing.
Understand "reficere" or "say reficere" or "cast reficere" or "reficere bridge" as casting reficere.

Instead of casting reficere:
	Say "Nothing happens. Maybe you need to add a word for a target?";

Instead of going north in Home:
	if player is not carrying spell book:
		say "Wait, you can't forget your spell book.";
	otherwise:
		move player to forest.
		
Instead of dropping spell book:
	say "Don't do that! You need this to battle."

Instead of putting spell book on table:
	say "Don't do that! you need this to battle."	
	
Instead of putting spell book on desk:
	say "Don't do that! you need this to battle."	
	
[Code for Forest and scenery]
The Forest is a room. It is north of Home. "A tranquil forest filled with trees and shrubs. Various rocks and bushes line the dirt road. A wooden bridge leads to the Town Square in the North. The Forest Clearing is to the East, and your Home is to the South."

The trees is scenery in the Forest. It is a container. The description of the trees is "A variety of trees, ranging in breeds. You see some apples in the trees."

The apple is a thing. It is in the trees. The description of the apple is "A shiny Fuji apple. Looks delicious."

Instead of eating apple:
	say "You're not hungry right now. Maybe later."
	
The Bridge is scenery in the Forest. The description is "A rickety old bridge connecting the forest with the town. It appears to be broken."

The shrubs is scenery in the Forest. The description of the shrubs is "Smaller plants then the trees growing in the shade."

The rock is a thing in the Forest. The description of the rocks is "Small rocks all around the size of your fist."
Understand "rock" as rocks.

The bushes is scenery in the Forest. The description of the bushes is "Leafy plants growing along the side of the road. "

The branch is a thing. It is in the Forest. The description of the branch is "A small branch torn from a small tree or bush."

The road is scenery in the Forest. The description of the road is "An old dirt road. It is worn from years of use."

[Code for Forest Clearing]
The Forest Clearing is a room. It is east of the Forest. "An opening reveals a large stream running parallel to the woods. It runs from the top of a mountain all the way to the city. A Hermit is sitting on a stone bench next to the stream. The Forest is to the East."

The stream is scenery in the Forest Clearing. The description of the stream is "A large stream. It's definetly too long to swim across. You remember swimming here as a child."

The woods is scenery in the Forest Clearing. The description of the woods is "A collection of trees stretching for miles. You can see the path you were just on."

The mountain is scenery in the Forest Clearing. The description of the mountain is "The Ruby Mountain reaches high into the sky. It is known for its unique red color."

The city is scenery in the Forest Clearing. The description of the city is "You can see parts of the city from here. It looks very busy today."

The bench is a thing. It is in the Forest Clearing. It is an enterable supporter. The description of the bench is "A bench carved out of a grey stone. It looks relatively new, and you do not remember when it was moved here."

[Code for Town Square]
The Town Square is a room. It is north of the Forest. "A large square, near the entrance to the stadium. It is filled with local wizards and fans. Large torches line the stadium's glass door. The Forest is to the South, the Mage District is to the East, and the Bazzar is to the West."

The stadium is scenery in the Town Square. The description of the stadium is "A large Coliseum reaching up into the sky. Made out of stone it has been here since the dawn of time."

The torch is a thing in the Town Square. "Thousands of torches brightly flicker in the daylight. You can counts thousands of them. The city probably wouldn't notice one missing."

Instead of taking torch:
	Say "You might get in trouble. Are you sure?";
	If player consents:
		Say "Taken";
		Move torch to player;
		Now the description of the torch is "A magical flame shines on this torch."

The glass door is a door. It is north of the Town Square and south of the Lobby. The description of the glass door is "The translucent glass is the only thing seperating you from the stadium."

[Code for the Mage District]
The Mage District is a room. It is east of the Town Square. "The city's oldest district and the heart of its magic. The most powerful wizards in the city often meet here to discuss wizardly things. Large stone buildings form a circle around the meeting grounds. Here you see a Mystic. There appears to be a water bottle on the ground. The Town Square is to the West."

The water bottle is a thing. The description is "A Hydrogize brand water bottle. It only contains the finest H20."

The buildings is scenery in the Mage District. The description of the buildings is "Ancient stone buildings extend as far as the eye can see. The architecture is strange, you can tell these buildings were made by wizards."

The mystic is a man in the Mage District. The description is "An old man dressed in a silk robe. His presence emits a magical power."

Instead of talking to mystic:
	Say "Hello, I am the Teacher. You may ask me any question about creating spells."

Instead of asking mystic about "spells":
	Say "One must combine the elements, the most basic forms of magic, to create a spell.";
	
Instead of asking mystic about "elements":
	Say "Fire, water, earth, air, grass, light, and dark. Those are the basic elements of magic."

Elements is a thing.	
spells is a thing.

[Code for the Bazaar]
The Bazaar is a room. It is west of the Town Square. "The city's main marketplace. Various tents line the road, each selling different goods. Here you can find anything from frog's tongue to holy water. You see a shop titled Mage Quest. The Town Square is to the East."

The tents is scenery in the Bazaar. The description of the tents is "Shops anything and everything wizard related. If you're looking for something special these shops would have it."

Mage Quest is a container in the Bazaar. The description of the Mage Quest is " A standard shop selling a variety of objects. There is a sign saying 'Overstocked items, please take.' You see a darkstone, and a lightstone.";
Understand "shop" as Mage Quest.

After examining mage quest:
	move darkstone to mage quest;
	move lightstone to mage quest;

The darkstone is a thing. The description is " A stone containing the essence of darkness. It can be used to create spells."
The lightstone is a thing. The description is "A stone containing the essence of light. It can be used to create spells."
	
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

Instead of casting pontem reficere for the first time:
	If the player is in the Forest:
		Say "You see a bright flash. When you're eyes return to normal you see a brand new bridge.";
		Now the description of the bridge is "A wooden bridge displaying a the highest level of architectural ingenuity.";
		Move pontem reficere to spell book;

	[Taken from Inform 7 Handbook]
Talking to is an action applying to one visible thing. 
Understand "talk to [someone]" or “converse with [someone]” as talking to.

Instead of talking to Hermit:
	If apple is on-stage:
		say "Grrwwll, hungry.";
	If apple is off-stage:
		say "Wizzarrd know sppels.
		
		
		Maybe you can try asking or telling him about something."

Instead of giving apple to Hermit:
	say "The Hermit gratefully accepts the apple. He eats it in one bite.";
	Remove apple from play.
Instead of giving something to Hermit:
	say "He shakes his head in disaproval."
	
Instead of telling Hermit about "bridge":
	If apple is off-stage:
		say "Broken. Pontem, broken.";
	If apple is on-stage:
		say "Grrwwll, hungry."
		
Instead of asking Hermit about "bridge":
	If apple is off-stage:
		say "The pontem? Pontem";
	If apple is on-stage:
		say "Grrwwll, hungry."

Instead of going north in the forest:
	If pontem reficere is in the spell book:
		move player to town square;
	If pontem reficere is not in the spell book:
		say "It's too dangerous to go north with the bridge broken."

[Code for Puzzle 2] [Brianna Hartner's Tonic]	
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
			now the XYZ is the results entry.

[If action is not stopped, continue to…]
Carry out combining it with: 
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
{Windstone, Lightstone}	Spiritum sanctum
	
Windstone is a thing. The description is "A gift from your parents. It is said to contain the essense of the wind."
[Spells]
Pontem reficere is a thing. The description is "[italic type]pontem reficere[roman type]: fix bridge"

Instead of taking pontem reficere:
	say "Don't remove this from your spell book"
	
Pratum inferno is a thing. The description is "[italic type]pratum inferno[roman type]: meadow of flame"

Instead of taking pratum inferno:
	say "Don't remove this from your spell book"
	
Aqua ignus is a thing. The description is "[italic type]aqua ignus[roman type]: scalding water"

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
	
Mysticum Illuminas is a thing. The description is "[italic type]mysticum illuminas [roman type]: mystic ray"

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
	say "Don't remove this from your spell book"

	


