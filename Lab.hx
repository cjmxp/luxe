package ;

import phoenix.geometry.Geometry;
import phoenix.Texture;


class Lab {
    public static var core : lab.Core;
    public static var renderer : phoenix.Renderer;

    public static function shutdown() {
        core.lime.shutdown();
    }

    public static function loadTexture(_id:String) : Texture {
        return renderer.load_texture(_id);
    }

    public static function addGeometry(geom:Geometry) {
        renderer.default_batcher.add(geom);
    } 
    
    public static function removeGeometry(geom:Geometry) {
        renderer.default_batcher.remove(geom);
    } 

}

