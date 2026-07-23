namespace DigitalKhatt
{
  // Angular's Service Worker (NGSW/PWA) has been retired, but real clients may still
  // have the old worker installed. This keeps two permanent kill-switches at the URLs
  // that worker checks/is registered at, so any client that shows up -- now or years
  // from now -- gets cleaned up. See https://angular.dev/ecosystem/service-workers/devops.
  public static class NgswSafetyNet
  {
    // Verbatim contents of @angular/service-worker's safety-worker.js. Served at the
    // old worker's own registered URL (/ngsw-worker.js) so the browser's native
    // SW-update check (which re-fetches that exact URL independently of any app JS)
    // installs it, and it then unregisters itself, clears ngsw:* caches, and claims
    // all open clients.
    public const string SafetyWorkerScript = @"/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.dev/license
 */

// tslint:disable:no-console

self.addEventListener('install', (event) => {
  self.skipWaiting();
});

self.addEventListener('activate', (event) => {
  event.waitUntil(self.clients.claim());

  event.waitUntil(
    self.registration.unregister().then(() => {
      console.log('NGSW Safety Worker - unregistered old service worker');
    }),
  );

  event.waitUntil(
    caches.keys().then((cacheNames) => {
      const ngswCacheNames = cacheNames.filter((name) => /^ngsw:/.test(name));
      return Promise.all(ngswCacheNames.map((name) => caches.delete(name)));
    }),
  );
});
";
  }
}
