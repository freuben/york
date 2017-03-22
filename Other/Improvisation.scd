TITLE:: Improvisation
summary:: Improvising with SuperCollider
categories:: Tutorials

section::Laptop Improvisation withLive Instruments

subsection::Challenges::
list::
##Exchange with instrumentalists
##Spontaneous reaction
##Quick response
##Sensitive and reflective to musicians’ contributions
::

subsection::Live Coding::
list::

##Live coding already provides the modularity needed for laptop improvisation.
##In practice it often involves typing relatively long pieces of code.
##Good for process music - slowly evolving music, drone, dance music, etc.
##Difficult to achive spontaneous reaction, particularly when interacting with live instrumentalists.
::

This session will focus on the SuperCollider programming language and its powerful sound synthesis engine and interactive features. I will introduce some basic SC concepts to get us started. Then, we will examine the possibilities of the language for creative coding, with particular emphasis on live coding. I will also critically examine some existing live coding practices and propose solutions to certain problems that arise from live coding with human musicians playing 'real' instruments in improvised settings. I will briefly explain my own live coding environment which prioritises modularity, immediacy and exchange in improvisation.
To save time, I will ask you to please install the latest version of SuperCollider in your computer before our session. You can download it by following this link: link::http://supercollider.github.io/download::. You can also download the sc3-plugins (providing additional synthesis, analysis, and other features) here: link::https://github.com/supercollider/sc3-plugins/releases::.

code::
HelpBrowser.goTo("https://freuben.github.io/computerhelp/UWEBristol.html");

UWEBristol

Computer



- Quick Run-through:
1. Progarmming Concepts 1
2. Playing with UGens, Buffers
3. SC Basics Quick Study
4. Patterns and Ndefs


Pseq, Prand, Pwhite, Pgeom, etc.
Pbind

(
SynthDef(\pattBasic, {arg out=0, freq=400, amp=0.1, gate=1;
	var signal, env;
	signal = SinOsc.ar(freq);
	env = EnvGen.kr(Env.adsr(releaseTime: 0.2), gate, doneAction: 2);
	Out.ar(out, signal*env*amp);
}).add;
)

Pdef
Pdefn

Ndef - for modulation, and for filtering

Ndef(\master).play;

//etc...

::