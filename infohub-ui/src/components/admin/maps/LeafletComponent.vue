<template>
    <div id="main-content">
        <div class="container-fluid">
            <div class="block-header">
                <bread-crumb></bread-crumb>
            </div>
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2>World Map</h2>
                        </div>
                        <div class="body" style="height: 700px; width: 100%">
                                <l-map
                                v-if="showMap"
                                :zoom="zoom"
                                :center="center"
                                :options="mapOptions"
                                style="height: 80%"
                                @update:center="centerUpdate"
                                @update:zoom="zoomUpdate"
                                >
                                <l-tile-layer
                                    :url="url"
                                    :attribution="attribution"
                                />
                                </l-map>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import { latLng } from "leaflet";
import { LMap, LTileLayer } from "vue2-leaflet";
import BreadCrumb from '@/components/BreadCrumb'

export default {
  name: "LeafletComponent",
  components: {
    BreadCrumb,
    LMap,
    LTileLayer,
  },
  data() {
    return {
      zoom: 5,
      center: latLng(20.5937, 78.9629),
      url: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
      attribution:
        '&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors',
      withPopup: latLng(20.5937, 78.9629),
      withTooltip: latLng(47.41422, -1.250482),
      currentZoom: 17.5,
      currentCenter: latLng(20.5937, 78.9629),
      mapOptions: {
        zoomSnap: 0.5
      },
      showMap: true
    };
  },
  methods: {
    zoomUpdate(zoom) {
      this.currentZoom = zoom;
    },
    centerUpdate(center) {
      this.currentCenter = center;
    },
  }
};
</script>
<style scoped>
.leaflet-container {
    z-index: 8 !important;
}
</style>
