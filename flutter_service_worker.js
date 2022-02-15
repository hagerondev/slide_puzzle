'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/assets/audio/sandwich.mp3": "5a3cf659842b0db22ab9495ea2cdc80a",
"assets/assets/audio/tile_move.mp3": "f4056eec1581ee5264ab8f481a59d5d3",
"assets/assets/audio/success.mp3": "746679b7331cf687df94188b40ff6f67",
"assets/assets/audio/shuffle.mp3": "0ac82d67f08b71d43046256dbc2db12d",
"assets/assets/audio/click.mp3": "7b257864b73a219a79572b785910e685",
"assets/assets/audio/skateboard.mp3": "13e460479dc92b0ff1574d35a5204392",
"assets/assets/audio/dumbbell.mp3": "aa341eb857b4fd972767430aa5babb30",
"assets/assets/images/simple_dash_medium.png": "4e2fd9dee5fbd150653f06a83be3accf",
"assets/assets/images/audio_control/simple_off.png": "ecac9ec0e8dc5d526e204651b5e62dcc",
"assets/assets/images/audio_control/yellow_dashatar_off.png": "f1606e5fb255a5a48dbadc722a983060",
"assets/assets/images/audio_control/green_dashatar_off.png": "8aae7e7135d47a7536b2cca91d877c2a",
"assets/assets/images/audio_control/blue_dashatar_off.png": "fb9cf31f68997341215e5484252350fe",
"assets/assets/images/audio_control/simple_on.png": "63e24186aec21d19e6f82f88d656a951",
"assets/assets/images/audio_control/dashatar_on.png": "927040d878eeeb9c0700d50fac87674f",
"assets/assets/images/logo_flutter_color.png": "496548be6768a0945cafe0cf7c12b389",
"assets/assets/images/dashatar/yellow/8.png": "a79784bf3c581c66b24abe8d763beeb5",
"assets/assets/images/dashatar/yellow/1.png": "a8bae11db409d9f2723f4610406606da",
"assets/assets/images/dashatar/yellow/3.png": "b99975133d7e00a2f8062213d01dfc42",
"assets/assets/images/dashatar/yellow/5.png": "ce4a033e166982d406ba46cacd010c10",
"assets/assets/images/dashatar/yellow/4.png": "15966b001700db040eb524da79f0a396",
"assets/assets/images/dashatar/yellow/7.png": "b4344c5419c69887b6074755057b9929",
"assets/assets/images/dashatar/yellow/2.png": "5e9329d55f457b82a3326f9d49ac3e6b",
"assets/assets/images/dashatar/yellow/6.png": "bf28ae6ee010859309e73cc31b756909",
"assets/assets/images/dashatar/yellow/9.png": "5be97c0fdfe9360a06c90834d0f0dfa5",
"assets/assets/images/dashatar/blue/8.png": "202cb5e44ad086beb5001620bc4b21cb",
"assets/assets/images/dashatar/blue/1.png": "a6ffe968e7e2aac0f00cfb143781d088",
"assets/assets/images/dashatar/blue/3.png": "7fe0cc0ea348e0c423c7f68185fc9faf",
"assets/assets/images/dashatar/blue/5.png": "c12c3c5c72e57a09760f01959091e029",
"assets/assets/images/dashatar/blue/4.png": "a331f7d9b22853e9c4518cd008ead87d",
"assets/assets/images/dashatar/blue/7.png": "2fef3f23ad9366f5d7ad65ca18a16580",
"assets/assets/images/dashatar/blue/2.png": "ec8835e43819463fe8687e7e51995a68",
"assets/assets/images/dashatar/blue/6.png": "528851c5fb34c429eb48858e9fc17b4c",
"assets/assets/images/dashatar/blue/9.png": "22f2f85ea549f7862146b4f0dee72558",
"assets/assets/images/dashatar/green/8.png": "0778b79c23b33ded283ed4f517b7ed0b",
"assets/assets/images/dashatar/green/1.png": "a27798ed359764f48389773aff266cb9",
"assets/assets/images/dashatar/green/3.png": "e762d5ac3ed8132acd5f0d14077109f7",
"assets/assets/images/dashatar/green/5.png": "7426438e0a4d1540aae0422961a7e7fd",
"assets/assets/images/dashatar/green/4.png": "2ece4d188b56ac70adf9f29e1e52a051",
"assets/assets/images/dashatar/green/7.png": "14f4e79087f008093d04c3ae434d450f",
"assets/assets/images/dashatar/green/2.png": "d4730f590244fad4491caa121d4f3abb",
"assets/assets/images/dashatar/green/6.png": "6f0f03fc500d71619dd9d52b4788f393",
"assets/assets/images/dashatar/green/9.png": "c9819c33aa1a5b5db51cc7c01cef0845",
"assets/assets/images/dashatar/gallery/green.png": "56aabe4c6f02f0000fb00cf8d7a93544",
"assets/assets/images/dashatar/gallery/blue.png": "0d11f20efc6570a048f7fdaaaf91fb01",
"assets/assets/images/dashatar/gallery/yellow.png": "8529c74259d6963491ceda3a82a8df30",
"assets/assets/images/dashatar/success/green.png": "7c284d7b36bb5388c4d87b1dd5cf3f88",
"assets/assets/images/dashatar/success/blue.png": "993266c9723f234300d052cd4fda43d1",
"assets/assets/images/dashatar/success/yellow.png": "463f9b0eddcae6089e8fd33f3ded3164",
"assets/assets/images/facebook_icon.png": "284d2a1d2782e5e24b1f9bce25f3ea9a",
"assets/assets/images/twitter_icon.png": "f9a8b83fc280f6a6363783cdbdd81573",
"assets/assets/images/logo_flutter_white.png": "fe99d806f7819c9ef2d2c9a1dc350693",
"assets/assets/images/momotaro/mochi.png": "20d31ff88cc084c4a3c935607f3914b2",
"assets/assets/images/momotaro/momo.png": "d0fe7293d9facbdff09e1989de58cd96",
"assets/assets/images/shuffle_icon.png": "32ebb4a7c6f9b07157a57f537f254619",
"assets/assets/images/menu_back.jpg": "1552db2a513f89f0d5b7ba9b86a62edc",
"assets/assets/images/simple_dash_larg.png": "c3100434238b1fe0f6b8e6d074ccd80e",
"assets/assets/images/timer_icon.png": "284049eb59c25888ebe6ecf864728727",
"assets/assets/images/simple_dash_small.png": "b3f2ec92db7be8297f529f94d8e38136",
"assets/assets/fonts/GoogleSans-BoldItalic.ttf": "aebc8fe5e393970fa3d468524e64b670",
"assets/assets/fonts/GoogleSans-Bold.ttf": "c0370e8a74992bab73461f8348e3b369",
"assets/assets/fonts/GoogleSans-Regular.ttf": "51134713ade7b1f137e06ce395d39d40",
"assets/assets/fonts/GoogleSans-Italic.ttf": "b08c7421b2d5350ea3003c8f38932601",
"assets/FontManifest.json": "a6a35a39ab693849dcde3aba2d4304a7",
"assets/AssetManifest.json": "5d505fb148080dc007be2c070c070b6c",
"assets/NOTICES": "eaa1153c633fb6aa029336a0ddde55af",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"index.html": "2295a2cd6a8d0bbccce2c253c1b671b8",
"/": "2295a2cd6a8d0bbccce2c253c1b671b8",
"version.json": "edac6610d63f93aebfb1c09a76230248",
"icons/favicon.png": "7a26ea9d4e61122fc023b84e5acdb148",
"icons/Icon-512.png": "aabba36693aba0ec8d954adf297d3125",
"icons/Icon-192.png": "12d05db1c0b26d429b54e3f8c946a496",
"main.dart.js": "bff6fdada424cce9a05923f6ad58e7ab",
"favicon.png": "7a26ea9d4e61122fc023b84e5acdb148",
"manifest.json": "c58884a2d51c23985850658029a90226",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
