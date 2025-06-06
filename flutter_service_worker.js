'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "f54f6719bcd87a76188331b2a2e7cb04",
"index.html": "8d8759cdbda3512921e7c31ca89e095d",
"/": "8d8759cdbda3512921e7c31ca89e095d",
"canvaskit/skwasm.wasm": "39dd80367a4e71582d234948adc521c0",
"canvaskit/canvaskit.js": "728b2d477d9b8c14593d4f9b82b484f3",
"canvaskit/skwasm.js": "ea559890a088fe28b4ddf70e17e60052",
"canvaskit/canvaskit.js.symbols": "bdcd3835edf8586b6d6edfce8749fb77",
"canvaskit/canvaskit.wasm": "7a3f4ae7d65fc1de6a6e7ddd3224bc93",
"canvaskit/chromium/canvaskit.js": "8191e843020c832c9cf8852a4b909d4c",
"canvaskit/chromium/canvaskit.js.symbols": "b61b5f4673c9698029fa0a746a9ad581",
"canvaskit/chromium/canvaskit.wasm": "f504de372e31c8031018a9ec0a9ef5f0",
"canvaskit/skwasm.js.symbols": "e72c79950c8a8483d826a7f0560573a1",
"flutter_bootstrap.js": "1469c9ee9b9730e246dd80ea1b16e38d",
"assets/NOTICES": "21dda4efd86dbb119eae8e8b5e1e5164",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "7d47c691c2f17439e5a18713e86ab1dc",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "a2eb084b706ab40c90610942d98886ec",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "bf21cd8fd775a3c59fd53afdee39e0e6",
"assets/AssetManifest.bin": "4a687bc680f86f6928623135df698947",
"assets/AssetManifest.bin.json": "7822bf0aa4f65d7cba61eee53f201ba7",
"assets/FontManifest.json": "3ddd9b2ab1c2ae162d46e3cc7b78ba88",
"assets/assets/images/profile_picture.webp": "8cf8bee1a050e978bda499bcbdf52ac2",
"assets/assets/images/certificates/extracurricular-activities/ecacf_unleashYourTalent.webp": "e05d26b070f8acef95fbfb95058d5e86",
"assets/assets/images/certificates/extracurricular-activities/ecacf_mujibOlympiad.webp": "11ed34459f53e4b46bf9498575a604ad",
"assets/assets/images/certificates/extracurricular-activities/ecacf_presentationMasterclass.webp": "36c53d22ca488f059f722d845d5c55a5",
"assets/assets/images/certificates/extracurricular-activities/ecacf_introToCS.webp": "cb01a5d30370a8fa8e3c5ceae6d582e3",
"assets/assets/images/certificates/extracurricular-activities/ecacf_smartBangladeshQuiz.webp": "e2661186705c40b713cce494877ca4e7",
"assets/assets/images/certificates/academic/cf_digitalMarketing.webp": "e64723ee1d42eaf652dc811304253aab",
"assets/assets/images/certificates/academic/cf_ccnaItn.webp": "6b555b98dc6df809884191d99cd7c634",
"assets/assets/images/certificates/academic/cf_ccnaItn_uiu.webp": "17950becbcb2e461707ee15eea48c6f3",
"assets/assets/images/icons/icon_skills.webp": "665368e88cef5d2108a0f9a14fc25089",
"assets/assets/images/icons/icon_coding.webp": "ca7c14b9722b6ce1bd23c3ba8dd31323",
"assets/assets/images/icons/icon_aboutMe.webp": "6809629b1317be8abb4c398b4afa90fd",
"assets/assets/images/icons/icon_workExperience.webp": "3cf84e3111f6a7b0142993854e7bcf74",
"assets/assets/images/logos/logo_canva.webp": "afa48cc5609af8522f4de94dabec0790",
"assets/assets/images/logos/logo_digitalMarkteing.webp": "8a06c2b7efe17c7ee9902f21efe1024d",
"assets/assets/images/logos/logo_flutter_full.webp": "0a0c6c513206c89c96e0796062d19ce8",
"assets/assets/images/logos/logo_blender.webp": "cb4f7a8be677ac399094cb8c66a118e4",
"assets/assets/images/logos/logo_flutter.webp": "f993f4d7407027fad2d50552415815db",
"assets/assets/images/logos/logo_kdenlive.webp": "3f384a8d8290255a875f0156b397ac6d",
"assets/assets/images/logos/logo_c.webp": "88a4c304fbe80be6ed681ca453cf5d6c",
"assets/assets/images/logos/logo_ubuntu.webp": "b26be97a0836c63b0e00512f05045591",
"assets/assets/images/logos/logo_unrealEngine.webp": "4a4b729da73d99a99e0506ce69e3f178",
"assets/assets/images/logos/logo_dart.webp": "3231f910e237c80b16d5aae4b2ea2a06",
"assets/assets/images/logos/logo_c++.webp": "150fd938a70775b7f693bad9a06b6378",
"assets/assets/images/logos/logo_photoshop.webp": "ecadc007a3ff24d3ea70a6a9a30fcedb",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/fonts/MaterialIcons-Regular.otf": "2ab9ec9e84bc78d17fec195283fcc8ed",
"assets/AssetManifest.json": "cbd89e8eb6a3149cda568846683bc2f1",
"manifest.json": "9f9f3094fc1cc0a1c283a623634125d1",
"icons/Icon-maskable-192.png": "524ca24f76088a7224e28d0e9b2190e5",
"icons/Icon-maskable-512.png": "5e5c2e99e430562e2f6bb4b3837ca4a8",
"icons/Icon-512.png": "5e5c2e99e430562e2f6bb4b3837ca4a8",
"icons/Icon-192.png": "524ca24f76088a7224e28d0e9b2190e5",
"favicon.png": "9d8b2a378b675458c7edd170129740d9",
"main.dart.js": "b152daf2230701afb54a0d4960b5b122",
"flutter.js": "83d881c1dbb6d6bcd6b42e274605b69c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
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
