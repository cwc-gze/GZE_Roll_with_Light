package  {


	import GZ.Gfx.Effects.Light;
	import GZ.Gpu.ShaderModel.GzModel.GzShCommun.GzShCommun_Light;
	import GZ.Gfx.Clip;
	
	/**
	 * @author Maeiky
	 */

	public class LigthObj  extends Clip {

	
		public var oLight : Light;
		//public var nIndex : UInt;
			
		public function LigthObj():Void {
			Clip(parent, 0 , 0);
		
			
			
			oLight  = new Light(400, 300, -500);
			oLight.oBoxColor.vColor.nRed = 1.000;
			oLight.oBoxColor.vColor.nAlpha = 60.000;
			oLight.oBoxSpecular.vColor.nAlpha = 60.000;
			
			
			//Debug.fTrace("NewLight : " + nIndex);
			GzShCommun_Light.fSetDiffuseTranslucidity(-1.0);
		}
		

		override public function fUpdateParentToChild():Void {
		/*
			vPos.nY = vPos.nY + 3;
			if(vPos.nY > 700 + 600){ //600 = Height frame
				vPos.nY = -700;
			}
				
			GzShCommun_Light.fUpdateLight(nIndex, oLight);
			*/
		}





	}
}
