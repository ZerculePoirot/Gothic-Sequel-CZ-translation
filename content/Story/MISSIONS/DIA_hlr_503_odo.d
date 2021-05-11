///////////////////////////////////////////////////////////////////////
//	Info EXIT
///////////////////////////////////////////////////////////////////////
instance	Info_Odo_Exit (C_INFO)
{
	npc			=  HLR_503_Odo;
	nr			=  999;
	condition	=  Info_Odo_Exit_Condition;
	information	=  Info_Odo_Exit_Info;
	important	=  FALSE;
	permanent	=  TRUE;
	description =  DIALOG_ENDE;
};

func int	Info_Odo_Exit_Condition()
{
	return TRUE;
};

func void	Info_Odo_Exit_Info()
{
	AI_StopProcessInfos	( self );
};

//#####################################################################
//##
//##
//##						KAPITEL 1
//##
//##
//#####################################################################
///////////////////////////////////////////////////////////////////////
//	Info PROVOZIER
///////////////////////////////////////////////////////////////////////
instance HLR_503_Odo_PROVOZIER		(C_INFO)
{
	npc		 = 	HLR_503_Odo;
	nr		 = 	2;
	condition	 = 	HLR_503_Odo_PROVOZIER_Condition;
	information	 = 	HLR_503_Odo_PROVOZIER_Info;
	important	 = 	TRUE;
	permanent	 = 	FALSE;
};

func int HLR_503_Odo_PROVOZIER_Condition ()
{
	if C_NPCisinvincible(self)
	{
		return TRUE;
	};
};
func int HLR_503_Odo_PROVOZIER_Info ()
{
//	AI_Output			(self, hero, "HLR_503_PROVOZIER_00_01"); //Hast du keine Angst, das dich einer der Verrückten anfällt?
	AI_Output			(self, hero, "HLR_503_PROVOZIER_00_01"); //Nemáš strach, že tě jeden z těch šílenců napadne?
//	AI_Output			(hero, self, "HLR_503_PROVOZIER_15_02"); //Besteht denn die Gefahr?
	AI_Output			(hero, self, "HLR_503_PROVOZIER_15_02"); //Hrozí to?
//	AI_Output			(self, hero, "HLR_503_PROVOZIER_00_03"); //Man kann nicht vorsichtig genug sein! Letzte Woche hat mich einer ins Bein gebissen.
	AI_Output			(self, hero, "HLR_503_PROVOZIER_00_03"); //Opatrnosti není nikdy dost! Minulý týden se mi jeden zakousnul do nohy.
//	AI_Output			(self, hero, "HLR_503_PROVOZIER_00_04"); //Ich musste eine halbe Stunde auf ihn einschlagen bis er losgelassen hat. Habe geblutet, wie ein Schwein!
	AI_Output			(self, hero, "HLR_503_PROVOZIER_00_04"); //Musel jsem do něj mlátit půl hodiny, než se pustil. Krvácel jsem jako prase!
};

///////////////////////////////////////////////////////////////////////
//	Info HOWDY
///////////////////////////////////////////////////////////////////////
instance HLR_503_Odo_HOWDY		(C_INFO)
{
	npc		 = 	HLR_503_Odo;
	nr		 = 	20;
	condition	 = 	HLR_503_Odo_HOWDY_Condition;
	information	 = 	HLR_503_Odo_HOWDY_Info;
	important	 = 	FALSE;
	permanent	 = 	TRUE;

//	description	 = 	"Wie geht es euren Kranken?";
	description	 = 	"Jak se daří tvým nemocným?";
};

func int HLR_503_Odo_HOWDY_Condition ()
{
	if	Npc_KnowsInfo(hero, HLR_503_Odo_PROVOZIER)
	{
		return TRUE;
	};
};

func void HLR_503_Odo_HOWDY_Info ()
{
//	AI_Output			(hero, self, "HLR_503_HOWDY_15_01"); //Wie geht es euren Kranken?
	AI_Output			(hero, self, "HLR_503_HOWDY_15_01"); //Jak se daří tvým nemocným?
//	AI_Output			(self, hero, "HLR_503_HOWDY_08_02"); //Ständig muss man auf diese Irren aufpassen.
	AI_Output			(self, hero, "HLR_503_HOWDY_08_02"); //Na tyhle šílence je potřeba si neustále dávat pozor.
//	AI_Output			(self, hero, "HLR_503_HOWDY_08_03"); //Das ist mehr Herausforderung als jeder Arenakampf.
	AI_Output			(self, hero, "HLR_503_HOWDY_08_03"); //Je to větší výzva než jakýkoliv boj v aréně.
	AI_StopProcessInfos	(self);
};




///////////////////////////////////////////////////////////////////////
//	Info DONTBOTHER
///////////////////////////////////////////////////////////////////////
instance	Info_Odo_DONTBOTHER (C_INFO)
{
	npc				= HLR_503_Odo;
	nr				= 1;
	condition		= Info_Odo_DONTBOTHER_Condition;
	information		= Info_Odo_DONTBOTHER_Info;
	important		= TRUE;
	permanent		= FALSE;
};

func int	Info_Odo_DONTBOTHER_Condition()
{
	if	Npc_KnowsInfo(hero, Info_Bartok_KEY)
	{
		return TRUE;
	};
};

func void	Info_Odo_DONTBOTHER_Info()
{
	AI_GotoNpc			(self, hero);
//	AI_Output			(self, hero,"Info_Odo_DONTBOTHER_00_01"); //Völlig Irre, was? Paß auf, daß er dich nicht beißt!
	AI_Output			(self, hero,"Info_Odo_DONTBOTHER_00_01"); //Úplný blázen, že? Dávej si pozor, aby tě nekousnul!
};

///////////////////////////////////////////////////////////////////////
//	Info KEY
///////////////////////////////////////////////////////////////////////
instance	Info_Odo_KEY (C_INFO)
{
	npc				= HLR_503_Odo;
	nr				= 1;
	condition		= Info_Odo_KEY_Condition;
	information		= Info_Odo_KEY_Info;
	important		= FALSE;
	permanent		= FALSE;
//	description		= "Bartok muß einen Schlüssel bei sich gehabt haben.";
	description		= "Bartok u sebe musel mít klíč.";
};

func int	Info_Odo_KEY_Condition()
{
	if	Npc_KnowsInfo(hero, Info_Odo_DONTBOTHER)
	{
		return TRUE;
	};
};

func void	Info_Odo_KEY_Info()
{
//	AI_Output			(hero, self,"Info_Odo_KEY_15_01"); //Bartok muß einen Schlüssel bei sich gehabt haben.
	AI_Output			(hero, self,"Info_Odo_KEY_15_01"); //Bartok u sebe musel mít klíč.
//	AI_Output			(self, hero,"Info_Odo_KEY_00_02"); //Ich hab heute meinen großzügigen Tag. Hier hast du ihn.
	AI_Output			(self, hero,"Info_Odo_KEY_00_02"); //Dneska mám velkorysý den. Tady ho máš.
	B_GiveInvItems		(self, hero, 	ItKe_Bartok, 1);
//	AI_Output			(self, hero,"Info_Odo_KEY_00_03"); //Bartok wird keine Verwendung mehr dafür haben.
	AI_Output			(self, hero,"Info_Odo_KEY_00_03"); //Bartok už ho k ničemu nepotřebuje.

//	B_LogEntry			(CH1_Bartok,	"Der Pfleger Odo gab mir den Schlüssel zu Bartok's Kiste. Einfach so!!! Es geschehen noch Zeichen und Wunder.");
	B_LogEntry			(CH1_Bartok,	"Ošetřovatel Odo mi dal klíč k Bartokově truhle. Jen tak!!! Zázraky se stále dějí.");
	Log_SetTopicStatus	(CH1_Bartok,	LOG_SUCCESS);

	AI_StopProcessInfos	(self);
};









