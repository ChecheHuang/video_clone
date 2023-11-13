import { Logo } from './logo'
import { SidebarRoutes } from './sidebar-routes'
import SimpleBar from 'simplebar-react'

export const Sidebar = () => {
  return (
    <SimpleBar className="h-full border-r flex flex-col  bg-white shadow-sm">
      <div className="p-6">
        <Logo />
      </div>
      <div className="flex flex-col w-full">
        <SidebarRoutes />
      </div>
    </SimpleBar>
  )
}
