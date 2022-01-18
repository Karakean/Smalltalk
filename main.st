<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 8.3 of July 28, 2017 on January 18, 2022 at 12:36:10</time-stamp>


<component-created>
<name>Języki Programowania</name> <type>package</type>
</component-created><!-- Package Języki Programowania* -->


<component-property>
<name>Języki Programowania</name> <type>package</type>
<property>packageName</property> <value>'Języki Programowania'</value>
</component-property>

<component-property>
<name>Języki Programowania</name> <type>package</type>
<property>comment</property> <value>'Programy dla przedmiotu Języki Programowania'</value>
</component-property>

<class>
<name>Wielokat</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>wierzcholki nazwa </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>JezykiProgramowania</category>
<attributes>
<package>Języki Programowania</package>
</attributes>
</class>

<comment>
<class-id>Wielokat</class-id>
<body>Wielokat has not been commented.  The comment should state the purpose of the class and also explain any unobvious aspects of the implementation.

Instance Variables:
	nazwa	&lt;MessageForwarder | Object | ProtoObject | ProtoObject&gt;	description of nazwa
	wierzcholki	&lt;(Array of: Point)&gt;	description of wierzcholki

</body>
</comment>

<class>
<name>Kwadrat</name>
<environment>Smalltalk</environment>
<super>Wielokat</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>bok </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>JezykiProgramowania</category>
<attributes>
<package>Języki Programowania</package>
</attributes>
</class>

<comment>
<class-id>Kwadrat</class-id>
<body>Kwadrat has not been commented.  The comment should state the purpose of the class and also explain any unobvious aspects of the implementation.

Instance Variables:
	bok	&lt;Number&gt;	description of bok

</body>
</comment>

<class>
<name>Trojkat</name>
<environment>Smalltalk</environment>
<super>Wielokat</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>wys podstawa </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>JezykiProgramowania</category>
<attributes>
<package>Języki Programowania</package>
</attributes>
</class>

<comment>
<class-id>Trojkat</class-id>
<body>Trojkat has not been commented.  The comment should state the purpose of the class and also explain any unobvious aspects of the implementation.

Instance Variables:
	bok	&lt;Number&gt;	description of bok
	wys	&lt;MessageForwarder | Object | ProtoObject | ProtoObject&gt;	description of wys

</body>
</comment>

<methods>
<class-id>Wielokat</class-id> <category>accessing</category>

<body package="Języki Programowania" selector="nazwa">nazwa
	"podaje nazwe wielokata"

	^nazwa</body>

<body package="Języki Programowania" selector="nazwa:">nazwa: nowa_nazwa
	"ustawia nowa nazwe wielokata"

	nazwa:=nowa_nazwa</body>
</methods>

<methods>
<class-id>Wielokat</class-id> <category>actions</category>

<body package="Języki Programowania" selector="obrot">obrot
	"obraca wielokat w prawo o 90 stopni"
	 | x y |
	1 to: wierzcholki size do: [:i | 
	x:= (wierzcholki at:i)x.
	y:= (wierzcholki at:i)y.
        wierzcholki at: i put: (-1)*y@x.].</body>

<body package="Języki Programowania" selector="drukuj">drukuj
		Transcript show: 'wierzcholki: '; cr.
		1 to: wierzcholki size do: [:i | 
		Transcript show: (wierzcholki at: i)printString; cr.].</body>
</methods>

<methods>
<class-id>Wielokat</class-id> <category>initialize-release</category>

<body package="Języki Programowania" selector="initialize:name:">initialize: liczbaWierzcholkow name: nowaNazwa
	"konstruktor obiektu - wielokata"

	nazwa:=nowaNazwa.
	wierzcholki:=Array new: liczbaWierzcholkow.
	wierzcholki at: 1 put: 0@0.</body>
</methods>


<methods>
<class-id>Kwadrat</class-id> <category>actions</category>

<body package="Języki Programowania" selector="pole">pole
	"licz pole kwadratu"

	^bok*bok</body>

<body package="Języki Programowania" selector="drukuj">drukuj
		super drukuj.
		Transcript show: 'pole kwadratu to: ';
		show: self pole printString; cr.</body>
</methods>

<methods>
<class-id>Kwadrat</class-id> <category>arithmetic</category>

<body package="Języki Programowania" selector="+">+ figura
	"dodaj 2 figury w sensie pola"

	| p |

	p:=self pole + figura pole.
	^(Kwadrat new) initialize: p sqrt</body>
</methods>

<methods>
<class-id>Kwadrat</class-id> <category>initialize-release</category>

<body package="Języki Programowania" selector="initialize:">initialize: a
	"tworz kwadrat o podanym boku"
	bok:=a.
	super initialize: 4 name: 'Kwadrat'.
	wierzcholki at: 2 put: bok@0.
	wierzcholki at: 3 put: bok@bok.
	wierzcholki at: 4 put: 0@bok.</body>
</methods>


<methods>
<class-id>Trojkat class</class-id> <category>instance creation</category>

<body package="Języki Programowania" selector="new">new
	"Answer a newly created and initialized instance."

	^super new initialize</body>
</methods>


<methods>
<class-id>Trojkat</class-id> <category>actions</category>

<body package="Języki Programowania" selector="drukuj">drukuj
		super drukuj.
		Transcript show: 'pole trojkata to: ';
		show: self pole printString; cr.</body>

<body package="Języki Programowania" selector="pole">pole
	"licz pole trojkata"
	^(podstawa * wys / 2)</body>
</methods>

<methods>
<class-id>Trojkat</class-id> <category>arithmetic</category>

<body package="Języki Programowania" selector="+">+ figura
	"dodaj 2 figury w sensie pola"

	| p |

	p:=self pole + figura pole.
	^(Trojkat new) initialize: ((2*p*podstawa/wys) sqrt) wysokosc: ((2*p*wys/podstawa) sqrt)</body>
</methods>

<methods>
<class-id>Trojkat</class-id> <category>initialize-release</category>

<body package="Języki Programowania" selector="initialize:wysokosc:">initialize: a wysokosc: h
	"tworz trojakt rownoramienny o podanej podstawie i wysokosci"
	podstawa:=a.
	wys:=h.
	super initialize: 3 name: 'Trojkat'.
	wierzcholki at: 2 put: podstawa@0.
	wierzcholki at: 3 put: podstawa/2@wys.</body>

<body package="Języki Programowania" selector="initialize:">initialize: a
	"tworz trojakt rownoramienny o podanej podstawie i wysokosci 1"
	podstawa:=a.
	wys:=1.
	super initialize: 3 name: 'Trojkat'.
	wierzcholki at: 2 put: podstawa@0.
	wierzcholki at: 3 put: podstawa/2@wys.</body>
</methods>



</st-source>
