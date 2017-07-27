#Multi-Purpose Fitness Center

fitness_center = {
	kick_boxing: {
		room_name: 'Kick Block',
		equipment: ['punching bags', 'gloves', 'floor mats'],
		difficulty_level_time: {
			beginner: '45 minutes',
			intermediate: '60 minutes',
			advanced: '75 minutes'
		}
	},
	yoga: {
		room_name: 'Namastay Here',
		equipment: ['yoga mats', 'straps', 'yoga blocks'],
		difficulty_level_time: {
			beginner: '45 minutes',
			intermediate: '60 minutes',
			advanced: '90 minutes'
		}
	},
	spin: {
		room_name: 'Spin City',
		equipment: ['stationary bicycles', 'towels'],
		difficulty_level_time: {
			beginner: '30 minutes',
			intermediate: '60 minutes',
			advanced: '75 minutes'
		}
	}
}


p fitness_center

p fitness_center[:kick_boxing][:equipment][2] #'floor mats'

p fitness_center[:yoga][:room_name] #'Namastay Here'

p fitness_center[:spin][:difficulty_level_time][:intermediate] #'60 minutes'

p fitness_center[:spin][:equipment].push'saddles' 

p fitness_center[:kick_boxing][:difficulty_level_time][:beginner] = "30 minutes"

p fitness_center[:yoga][:equipment][1] = 'yoga straps'

p fitness_center[:spin][:equipment].delete'towels'

p fitness_center


