//Generates platforms when the camera moves to an unexplored area
class PlatformGenerator extends Interactor<SectorGrid, HCamera> {
  boolean detect (SectorGrid grid, HCamera cam) {
    //detects if the camera box is not completely contained
    return !grid.getCurrentSector().getBoundingBox().contains(cam.getBoundingBox());
  }

  void handle(SectorGrid grid, HCamera cam) {
    Sector current = grid.getCurrentSector();
    // see which neighbors of this sector the camera overlaps with
    Rectangle[] neighbors = current.getNeighborRects();
    for (int i = 0; i < 8; i++) {
      if (cam.getBoundingBox().collide(neighbors[i])) {
        int x = (int)neighbors[i].getPosition().x /Sector.SECTOR_SIZE; 
        int y = (int)neighbors[i].getPosition().y /Sector.SECTOR_SIZE; 
        //make sure the overlapped sector exists
        Sector sector = grid.getSector(x, y); 
        // if the camera center is in a new bounding box, we need to change the current sector
        if (neighbors[i].contains(cam.getBoundingBox().getCenter()))
          grid.setCurrentSector(sector);
      }
    }
  }
}

