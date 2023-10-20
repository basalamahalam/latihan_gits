<div class="sidebar border border-right col-md-3 col-lg-2 p-0 bg-body-tertiary">
    <div class="offcanvas-md offcanvas-end bg-body-tertiary" tabindex="-1" id="sidebarMenu" aria-labelledby="sidebarMenuLabel">
      <div class="offcanvas-body d-md-flex flex-column p-0 pt-lg-3 overflow-y-auto">
        <ul class="nav flex-column">
          <li class="nav-item">
            <a class="nav-link d-flex gap-2 {{ Request::is('dashboard') ? 'active' : '' }}" href="/dashboard"><i class="bi bi-house"></i> Dashboard</a>
          </li>
          <li class="nav-item">
            <a class="nav-link d-flex gap-2 {{ Request::is('dashboard/posts*') ? 'active' : '' }}" href="/dashboard/posts"><i class="bi bi-file-text"></i>
              My Posts
            </a>
          </li>
        </ul>

        @can('admin')
        <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
          <span>Administrator</span>
        </h6>

        <ul class="nav flex-column">
          <li class="nav-item">
            <a class="nav-link d-flex gap-2 {{ Request::is('dashboard/categories*') ? 'active' : '' }}" href="/dashboard/categories"><i class="bi bi-grid"></i> Categories</a>
          </li>
        </ul>
        @endcan

        <hr class="my-2">

        <ul class="nav flex-column mb-2">
          <li class="nav-item">
            <form action="/logout" method="post">
              @csrf
              <button type="submit" class="nav-link d-flex gap-2"><i class="bi bi-box-arrow-right"></i> Logout</button>
            </form>
          </li>
        </ul>
      </div>
    </div>
  </div>