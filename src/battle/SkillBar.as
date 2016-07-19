package battle
{
	import models.Supporter;
	
	import supportRPG.assets.battle.skillBar_mc;

	public class SkillBar
	{
		private var _assets:skillBar_mc;
		
		private var _mpBar:Bar;
		private var _skills:Vector.<SkillButton>;
		
		private var _model:Supporter;
		
		public function SkillBar(assets:skillBar_mc, supporter:Supporter)
		{
			_assets = assets;
			_model = supporter;
			
			_mpBar = new Bar(_assets.mpBar, _model.maxMp);
			_skills = Vector.<SkillButton>([
				new SkillButton(_assets.skill1),
				new SkillButton(_assets.skill2),
				new SkillButton(_assets.skill3),
				new SkillButton(_assets.skill4),
				new SkillButton(_assets.skill5)
			]);
		}
	}
}