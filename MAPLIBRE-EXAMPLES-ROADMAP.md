# MapLibre GL JS Examples Roadmap

## Common Setup (All Examples)
- MapLibre GL JS from CDN
- Carto Voyager base style with English labels
- Style selector (Voyager, Positron, Dark)
- Navigation controls + **Geolocate control** (default on all maps)
- All maps centered on UAE

---

## Phase 1: Core Features & Interactions ✅ COMPLETED

### Active Examples

| # | Example | File | Status | Notes |
|---|---------|------|--------|-------|
| 1 | Camera Animation | `maplibre-camera-animation.html` | ✅ Active | 3D rotating camera, play/pause, speed control |
| 2 | Click Symbol | `maplibre-click-symbol.html` | ✅ Active | UAE landmarks, flyTo, popups |
| 3 | **Color Picker** | `maplibre-color-picker.html` | ✅ Active | **Enhanced** - see below |
| 4 | **Draggable Markers** | `maplibre-draggable-marker.html` | ✅ Active | **Enhanced** - see below |

### Disabled Examples (WIP)

| # | Example | File | Status | Reason |
|---|---------|------|--------|--------|
| 1 | Live Realtime Data | `maplibre-realtime-data.html` | 🚧 Disabled | Needs real data source |
| 2 | Zoom-Based Color | `maplibre-zoom-color.html` | 🚧 Disabled | Demo feature only |
| 3 | PMTiles | `maplibre-pmtiles.html` | 🚧 Disabled | No UAE PMTiles available |
| 4 | UAE Real Estate | `uae-real-estate-map.html` | 🚧 Disabled | Needs accurate property data |

### Merged into Default (Removed from Dashboard)

| Feature | Status | Notes |
|---------|--------|-------|
| Locate User | ✅ Merged | Now default geolocate control on ALL maps |

---

## Phase 1 Enhancements (Beyond Original Plan)

### Color Picker Enhancements
- **Layer-specific palettes**: Different color options for Water, Land/Parks, Buildings, Roads
- **WYSIWYG preview**: Solid color buttons match exactly what gets applied
- **Outline preservation**: Applies `fill-outline-color` to maintain building/park boundaries
- **Auto-darkening**: Custom colors automatically get darker outlines
- **Dynamic detection**: Finds layers by keyword matching, works across different map styles

### Draggable Markers Enhancements
- **Multiple markers**: Add unlimited markers with different colors
- **Distance measurement**: Shows total distance between all markers
- **Copy to clipboard**: One-click coordinate copying
- **Format toggle**: Switch between Decimal and DMS coordinate formats
- **Marker sidebar**: Lists all markers with coordinates and delete buttons
- **Distance line**: Visual line connecting all markers

### Global Enhancements
- **Geolocate on all maps**: Every example now has location tracking
- **English labels**: All maps prefer English text where available
- **UAE-centered**: All examples default to UAE region
- **Style selector**: Voyager, Positron, Dark Matter options

---

## Phase 2: Advanced Features & Drawing ✅ COMPLETED

| # | Example | File | Status | Notes |
|---|---------|------|--------|-------|
| 1 | Satellite Map | `maplibre-satellite.html` | ✅ Active | Esri satellite imagery with labels overlay toggle |
| 2 | Fly To Location | `maplibre-fly-to.html` | ✅ Active | UAE landmarks list with smooth camera transitions |
| 3 | Filter by Toggle | `maplibre-filter-toggle.html` | ✅ Active | Category checkboxes to show/hide markers |
| 4 | Filter by Text | `maplibre-filter-text.html` | ✅ Active | Search input filtering UAE places |
| 5 | 3D Indoor Mapping | `maplibre-3d-indoor.html` | ✅ Active | Dubai Mall floor plans with room types |
| 6 | Draw Polygon | `maplibre-draw-polygon.html` | ✅ Active | Click-to-draw polygon with area/perimeter |
| 7 | Terra Draw | `maplibre-terra-draw.html` | ✅ Active | Full drawing toolkit (point, line, polygon, circle, freehand) |
| 8 | Draw Circle | `maplibre-draw-circle.html` | ✅ Active | Turf.js circle with adjustable radius |
| 9 | 3D Buildings | `maplibre-3d-buildings.html` | ✅ Active | Fill-extrusion with pitch/bearing/height controls |
| 10 | Rich Text Labels | `maplibre-rich-text.html` | ✅ Active | UAE landmarks with customizable text styles |

### Phase 2 Features

- **Satellite Map**: Esri World Imagery tiles, toggle between satellite-only and with labels
- **Fly To**: Click landmarks to smoothly fly to location with random bearing for variety
- **Filter Toggle**: 5 categories (Landmarks, Hotels, Beaches, Shopping, Culture) with checkboxes
- **Filter Text**: Real-time search across 20 UAE places with marker show/hide
- **3D Indoor**: Simulated Dubai Mall floor plans with 3 floors, color-coded room types
- **Draw Polygon**: Custom polygon drawing with vertex display, area/perimeter calculation, GeoJSON export
- **Terra Draw**: 8 drawing modes (point, line, polygon, rectangle, circle, freehand, select, pan)
- **Draw Circle**: Click to place center, slider to adjust radius 1-50km
- **3D Buildings**: Carto vector tiles with fill-extrusion, preset locations (Burj Khalifa, Marina, etc.)
- **Rich Text**: 4 style presets (Default, Bold, Elegant, Neon), full customization of text properties

---

## Reference Links

### Phase 1
- https://maplibre.org/maplibre-gl-js/docs/examples/locate-the-user/
- https://maplibre.org/maplibre-gl-js/docs/examples/add-live-realtime-data/
- https://maplibre.org/maplibre-gl-js/docs/examples/animate-map-camera-around-a-point/
- https://maplibre.org/maplibre-gl-js/docs/examples/center-the-map-on-a-clicked-symbol/
- https://maplibre.org/maplibre-gl-js/docs/examples/change-a-layers-color-with-buttons/
- https://maplibre.org/maplibre-gl-js/docs/examples/change-building-color-based-on-zoom-level/
- https://maplibre.org/maplibre-gl-js/docs/examples/create-a-draggable-marker/
- https://maplibre.org/maplibre-gl-js/docs/examples/pmtiles-source-and-protocol/

### Phase 2
- https://maplibre.org/maplibre-gl-js/docs/examples/display-a-satellite-map/
- https://maplibre.org/maplibre-gl-js/docs/examples/fly-to-a-location/
- https://maplibre.org/maplibre-gl-js/docs/examples/filter-symbols-by-toggling-a-list/
- https://maplibre.org/maplibre-gl-js/docs/examples/filter-symbols-by-text-input/
- https://maplibre.org/maplibre-gl-js/docs/examples/extrude-polygons-for-3d-indoor-mapping/
- https://maplibre.org/maplibre-gl-js/docs/examples/draw-polygon-with-mapbox-gl-draw/
- https://maplibre.org/maplibre-gl-js/docs/examples/draw-geometries-with-terra-draw/
- https://maplibre.org/maplibre-gl-js/docs/examples/draw-a-circle/
- https://maplibre.org/maplibre-gl-js/docs/examples/display-buildings-in-3d/
- https://maplibre.org/maplibre-gl-js/docs/examples/display-and-style-rich-text-labels/

---

## Files Summary

### Dashboard
- `maplibre-examples-index.html` - Main dashboard with all examples

### Base Maps
- `uae-map-basic.html` - Simple map with controls

### Phase 1 (Active)
- `maplibre-camera-animation.html`
- `maplibre-click-symbol.html`
- `maplibre-color-picker.html`
- `maplibre-draggable-marker.html`

### Phase 1 (Disabled/WIP)
- `maplibre-locate-user.html` (merged into default)
- `maplibre-realtime-data.html`
- `maplibre-zoom-color.html`
- `maplibre-pmtiles.html`
- `uae-real-estate-map.html`

### Phase 2 (All Active)
- `maplibre-satellite.html`
- `maplibre-fly-to.html`
- `maplibre-filter-toggle.html`
- `maplibre-filter-text.html`
- `maplibre-3d-indoor.html`
- `maplibre-draw-polygon.html`
- `maplibre-terra-draw.html`
- `maplibre-draw-circle.html`
- `maplibre-3d-buildings.html`
- `maplibre-rich-text.html`

---

## Total: 18 Examples
- **Active**: 14 examples
- **Disabled/WIP**: 5 examples (pending real data or improvements)
