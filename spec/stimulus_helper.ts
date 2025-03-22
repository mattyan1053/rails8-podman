import { Application, ControllerConstructor } from "@hotwired/stimulus"

export function startStimulus(name: string, controller: ControllerConstructor) {
    const application = Application.start()
    window.Stimulus = application
    application.register(name, controller)
}

export function setHTML(content: string = '') {
    document.body.innerHTML = content.trim()
    return document.body.innerHTML
}

export function getHTML() {
    return document.body.innerHTML.trim()
}

export function stopStimulus() {
    window.Stimulus.stop()
}
