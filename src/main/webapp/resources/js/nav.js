const subMenus = {
    common: [
        {
            title: "공통관리",
            items: [
                { name: "공통관리1", href: "/common/management1" },
                { name: "공통관리2", href: "/common/management2" }
            ]
        },
        {
            title: "공통자료",
            items: [
                { name: "공통자료1", href: "/common/data1" },
                { name: "공통자료2", href: "/common/data2" }
            ]
        }
    ],
    hr: [
        {
            title: "인사관리",
            items: [
                { name: "인사관리1", href: "/hr/management1" },
                { name: "인사관리2", href: "/hr/management2" }
            ]
        },
        {
            title: "인사자료",
            items: [
                { name: "인사자료1", href: "/hr/data1" },
                { name: "인사자료2", href: "/hr/data2" }
            ]
        }
    ],
    accounting: [
        {
            title: "회계관리",
            items: [
                { name: "회계관리1", href: "/accounting/management1" },
                { name: "회계관리2", href: "/accounting/management2" }
            ]
        },
        {
            title: "회계자료",
            items: [
                { name: "회계자료1", href: "/accounting/data1" },
                { name: "회계자료2", href: "/accounting/data2" }
            ]
        }
    ],
    form: [
        {
            title: "Form",
            href: "/login",
            items: []
        }
    ],
    tap: [
        {
            title: "Tap",
            href: "/#",
            items: []
        }
    ],
    grid: [
        {
            title: "Grid",
            href: "/#",
            items: []
        }
    ]
};

function toggleSidebar() {
    const sidebar = document.getElementById('sidebar');
    const mainContent = document.querySelector('.main-content');
    if (sidebar.style.width === '150px') {
        sidebar.style.width = '0';
        mainContent.style.marginLeft = '0';
    } else {
        sidebar.style.width = '150px';
        mainContent.style.marginLeft = '150px';
    }
}

function updateSidebar(menu) {
    const sidebarNav = document.getElementById('sidebar-nav');
    sidebarNav.textContent = ''; // Clear the existing sidebar content

    if (subMenus[menu]) {
        subMenus[menu].forEach(subMenu => {
            const li = document.createElement('li');
            const a = document.createElement('a');
            const span = document.createElement('span');
            a.href = subMenu.href || '#';
            a.classList.add('menu-link');
            span.textContent = subMenu.title;
            span.classList.add('submenu-toggle');
            a.appendChild(span);
            li.appendChild(a);

            if (subMenu.items && subMenu.items.length > 0) {
                const ul = document.createElement('ul');
                ul.classList.add('submenu');
                subMenu.items.forEach(item => {
                    const subLi = document.createElement('li');
                    const subA = document.createElement('a');
                    const subSpan = document.createElement('span');
                    subA.href = item.href;
                    subA.classList.add('menu-link');
                    subSpan.textContent = item.name;
                    subA.appendChild(subSpan);
                    subLi.appendChild(subA);
                    ul.appendChild(subLi);
                });

                li.appendChild(ul);
                a.addEventListener('click', (e) => {
                    e.preventDefault();
                    ul.classList.toggle('visible');
                });
            } else {
                a.addEventListener('click', (e) => {
                    // If there's no submenu, allow the link to follow its href
                });
            }

            sidebarNav.appendChild(li);
        });
    }
}

document.querySelectorAll('.nav-link').forEach(navLink => {
    navLink.addEventListener('click', (e) => {
        e.preventDefault();
        const menu = e.target.getAttribute('data-menu');
        updateSidebar(menu);
    });
});

a.addEventListener('click', (e) => {
    e.preventDefault();
    ul.classList.toggle('visible');
});
