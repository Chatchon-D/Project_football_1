'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "57ac26f691dd398b4e4064afb9955c6c",
"assets/assets/images/back.png": "bf3de9bb70e9df897c412d429380453c",
"assets/assets/images/D_Gomez.jpg": "2460411b6aa6beccc06777c716967e49",
"assets/assets/images/D_Konate.jpg": "1a52f13868d4135d2fd40091fc669e0c",
"assets/assets/images/D_Matip.jpg": "39d560293a8d52d2d28f1552c9bbeabd",
"assets/assets/images/D_Robertson.jpg": "cbf940de2770111f5b6116297cb7b6a8",
"assets/assets/images/D_Trent.jpg": "f17c87dc9b598e6bc860d11cddba95e6",
"assets/assets/images/D_Tsimikas.jpg": "dbedbe2128b1fcdeaa5210fd26eb7108",
"assets/assets/images/D_Virgil.jpg": "21587b79e1f12ccf1e697649ea93bda8",
"assets/assets/images/D_Williams.jpg": "ee528ee77714fac99e8a543c7c8f9a97",
"assets/assets/images/G_Adrian.jpg": "0a9b4a31ec371b7edc976b87eab8a0b5",
"assets/assets/images/G_Alisson_Becker.jpg": "bd27e16667bcb21aaaa6459584b7e2e6",
"assets/assets/images/G_Caoimhin.jpg": "e4a56d31a8d9bd474845deb0b644b85f",
"assets/assets/images/G_Loris_Karius.jpg": "9d1d26f0dd6e8c4c0cabe80e9fe73915",
"assets/assets/images/G_Pitaluga.jpg": "3dc46537e70217c7673170bd5f0e1208",
"assets/assets/images/M_Chamberlain.jpg": "00fc77da9b120d5e1ed20ee2d18fc932",
"assets/assets/images/M_Fabinho.jpg": "3c05594d75553ebbfb830720a74b06f6",
"assets/assets/images/M_Henderson.jpg": "c3ccbf33adc58b20904712d2dd621f43",
"assets/assets/images/M_Jones.jpg": "8c623706cb7a60f14301ec7ca6e85dc4",
"assets/assets/images/M_Keita.jpg": "329197d4d92ebfc6be9abd75d5a4dff8",
"assets/assets/images/M_Milner.jpg": "b64244cebcda4afbd6e0e0430a28280b",
"assets/assets/images/M_Thiago.jpg": "1d404d179d9613b13652245585e647bc",
"assets/assets/images/S-Mane.jpeg": "79a1eacdbbc7a8a00d4bb06d83101244",
"assets/assets/images/Salah.jpeg": "e61fb0943aea431a51e329359c3580f5",
"assets/assets/images/S_Diaz.jpeg": "4dc43712c58f52a8668ae5ec72aadb9d",
"assets/assets/images/S_Elliott.jpeg": "f45005215a594b2d34be98bfcd566d63",
"assets/assets/images/S_Firmino.jpeg": "6fed7e505a88ad3e855ccb6ab89f2c11",
"assets/assets/images/S_Jota.jpeg": "1c77543b4c42ac43c453b2ce825413e9",
"assets/assets/images/S_Minamino.jpeg": "66597ef05fb21d0b733594ed2bfd265d",
"assets/assets/images/S_Origi.jpeg": "90bde028abd372d05f41cd05a64e988f",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/NOTICES": "fdb932d0c5b4b9b38df7746d616e3446",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "67872eb951d436844fa3295909e3525f",
"/": "67872eb951d436844fa3295909e3525f",
"main.dart.js": "f38a52b96143e51563110cbd01f4dd67",
"manifest.json": "84e79df7db2021595aec3dabb311b45b",
"version.json": "0c98e7e2e52638be6e8a125a65236699"
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
