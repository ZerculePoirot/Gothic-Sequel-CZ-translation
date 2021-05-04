// ---------------------------------------------------------
// NPC 'PAL_1007_Garvell'
// ---------------------------------------------------------

instance PAL_1007_Garvell		(C_NPC)
{


		//-------- primary data --------
		name								=	"Garvell";
		guild								=	GIL_PALADIN;
		npctype								=	NPCTYPE_MAIN;
		level								=	20;
		voice								=	8;
		id									=	1007;

		//-------- attributes ----------
		attribute [ATR_STRENGTH]			=	100;
		attribute [ATR_DEXTERITY]			=	75;
		attribute [ATR_MANA_MAX]			=	0;
		attribute [ATR_MANA]				=	0;
		attribute [ATR_HITPOINTS_MAX]		=	400;
		attribute [ATR_HITPOINTS]			=	400;
		attribute [ATR_REGENERATEMANA]		=	0;
		attribute [ATR_REGENERATEHP]		=	0;

		//-------- protection ----------
		protection [PROT_EDGE]				=	0;
		protection [PROT_BLUNT]				=	0;
		protection [PROT_POINT]				=	0;
		protection [PROT_FIRE]				=	0;
		protection [PROT_MAGIC]				=	0;

		protection [PROT_FALL]				=	0;
		protection [PROT_FLY]				=	0;
		protection [PROT_BARRIER]			=	0;

		//-------- visuals -------------
		Mdl_SetVisual						(self, "humans.mds"); 					// basic animation file
		Mdl_ApplyOverlayMds					(self, "humans_militia.mds"); 			// overlay animation file
		Mdl_SetVisualBody					(self, "hum_body_naked0", 0, 1, "hum_head_fighter", 51, 2, PALS_ARMOR);
		B_Scale								(self); 								//auto-matching scale with strength
		Mdl_SetModelFatness					(self,  0);

		//-------- talents -------------
		Npc_SetTalentSkill					(self, NPC_TALENT_1H,  2);
		Npc_SetTalentSkill					(self, NPC_TALENT_2H,  2);

		//-------- inventory -----------

		EquipItem							(self, ItMw_PaladinSword);

		//-------- ai ------------------
		fight_tactic						=	FAI_HUMAN_STRONG;
		daily_routine						=	Rtn_start_1007;
		senses_range						=	2000;
		senses								=	SENSE_HEAR | SENSE_SEE;



};

// ---------------------------------------------------------
// daily routines
// ---------------------------------------------------------

func void Rtn_start_1007		()
{
		TA_PracticeSword	(08, 00, 20, 00, "BF_PLATEAU_TRAIN_3");
		TA_PracticeSword	(20, 00, 08, 00, "BF_PLATEAU_TRAIN_3");
};


