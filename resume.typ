#show link: underline
#show link: set text(blue)
#set par(spacing: 0.7em, justify: true)
#set list(marker: sym.square.filled)

#let resume-template(body) = {
  set page(
    paper: "us-letter",
    margin: (0.5in),
    numbering: none,
  )
  show: body
}

#let padded(body) = {
    body

    v(1.2em, weak: true)
}

#let section(title, body) = {
    padded([
        #text(weight: "bold", smallcaps(title))
        #line(length: 100%, stroke: 0.5pt)
        #body
    ])
}

#let job(company: "", date: "", title: "", location: "", body) = {
  padded([
    #grid(
        columns: (1fr, auto),
        gutter: 2em,
        [*#company*, #title],
        [#location, #date],
    )
    #body
  ])
}

#let talk(title, conference) = {
    grid(
        columns: (1fr, auto),
        gutter: 2em,
        title,
        conference,
    )
}

#show: resume-template

#align(center)[
    = #text(size: 20pt, smallcaps("Evan Goode"))

    #link("mailto:mail@evangoo.de", "mail@evangoo.de")
    #sym.diamond
    #link("tel:+14049173321", [+1 404 917 3321])
    #sym.diamond
    #link("https://matrix.to/#/@goode:matrix.org", "@goode:matrix.org")
    #sym.diamond
    #link("https://github.com/evan-goode", "https://github.com/evan-goode")
    #sym.diamond
    Atlanta, GA (EST/EDT)
]

#v(0.7em)

#section[Selected Skills & Interests][
    #padded([
        #columns(2, gutter: 1em)[
            - Free/libre and open-source software development
            - Package management systems and build systems
            - GNU/Linux software development, Rust, C, C++
            - Full-stack web development, React, TypeScript, Go
            - Nix and NixOS
            #colbreak()
            - Leading geographically-distributed teams
            - Documentation, technical writing
            - Cryptography, security, reverse engineering
            - Teaching
        ]
    ])
]

#section[Work Experience][
    #job(
        company: [Red Hat, Inc.],
        date: [2023--],
        title: [Senior Software Engineer (2025--), Software Engineer (2023--2025)],
        location: [Atlanta, GA],
        [
             Technical lead of the 8-developer DNF team since 2025. Building #link("https://github.com/rpm-software-management/dnf5", [DNF5]), a new package manager written in C++20 and a core component of Fedora Linux. Implemented major features of DNF5 including `system-upgrade`, `needs-restarting`, and `manifest`. Authored system-wide change proposals for Fedora. Coordinated cross-team efforts to replace DNF 4 with DNF5 in RHEL 11. Conducted panel interviews and mentored newer team members.
        ]
    )
    #job(
        company: [G.T. College of Computing],
        date: [2019--2022],
        title: [Teaching Assistant],
        location: [Atlanta, GA],
        [
            Teaching assistant for six semesters of CS 3451: Introduction to Computer Graphics. Held busy office hours twice a week, debugged and graded programming homework. Worked with Greg Turk, Blair MacIntyre, and Jarek Rossignac.
        ]
    )
    #job(
        company: [Decatur Makers],
        date: [Summer 2021],
        title: [Digital Infrastructure Intern],
        location: [Atlanta, GA],
        [
            Developed #link("https://github.com/DecaturMakers/glue", [an RFID authentication system]) to allow members access to the makerspace. Automated time-consuming steps in the process for signing up new members, such as requesting background checks.
        ]
    )
    #job(
        company: [Red Hat, Inc.],
        date: [Summer 2019],
        title: [Software Engineering Internship],
        location: [Boston, MA],
        [
            Added a new feature to #link("https://github.com/weldr/lorax", [Lorax]) (at the time a component of RHEL Image Builder) to enable uploads of RHEL images to cloud providers including AWS, Microsoft Azure, and Google Cloud.
        ]
    )
    #job(
        company: [Axio Global],
        date: [Summer 2018],
        title: [Development Intern],
        location: [Atlanta, GA],
        [
            Launched a React+GraphQL+Express web platform to facilitate communication between clients and in-house analysts, created tools for visualizing insurance policy coverage.
        ]
    )
    #job(
        company: [G.T. School of Mathematics],
        title: [Student Assistant],
        location: [Atlanta, GA],
        date: [Summer 2016, Summer 2017],
        [
            Developed in-house infrastructure for managing RHEL and macOS systems, monitoring building power usage and coolant flow, and syncing user permissions across services.
        ]
    )
]

#section[Talks][
    #talk(
        [#link(
            "https://pretalx.devconf.info/devconf-cz-2026/talk/SY7VNU/",
            [Local package layering on bootc systems with DNF5]
        )],
        [DevConf.CZ 2026],
    )
    #talk(
        [#link(
            "https://events.experiences.redhat.com/widget/redhat/sum26/SessionCatalog2026/session/1762977587228001cSMS",
            [Modernize your package manager: introducing DNF5 and declarative package management with manifests]
        )],
        [Red Hat Summit Community Day 2026],
    )
    #talk(
        [#link(
            "https://pretalx.com/devconf-cz-2024/talk/NNKT3F/",
            [Learning from Nix: how other package managers can do better]
        )],
        [DevConf.CZ 2024],
    )
]

#section[Education][
    #job(
        company: [Georgia Institute of Technology],
        date: [2021--2022],
        title: [M.S. Computer Science],
        location: [Atlanta, GA],
        [
            Specialization in Computing Systems.

            Selected coursework: Advanced Topics in Malware Analysis, High Performance Parallel Computing, Applied
            Cryptography, Programming Languages
        ]
    )
    #job(
        company: [Georgia Institute of Technology],
        date: [2017--2021],
        title: [B.S. Computer Science],
        location: [Atlanta, GA],
        [
            Specializations in Artificial Intelligence and Media.

            Selected coursework: Automata & Complexity, Machine Learning, Computer Vision, Computer Graphics, Computer Audio
        ]
    )
]

